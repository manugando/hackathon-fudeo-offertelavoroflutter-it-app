import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:offertelavoroflutter_app/modules/common/mappers/paged_list_mapper.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paged_list/paged_list.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/mappers/hiring_job_offer_mapper.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/mappers/hiring_job_offer_options_mapper.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer_filters/hiring_job_offer_filters.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer_options/hiring_job_offer_options.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/dtos/notion_db_hiring_job_offer/notion_db_hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/dtos/notion_page_hiring_job_offer/notion_page_hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/dtos/db_query_request/notion_db_query_request.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/dtos/filter/filter_condition/notion_filter_condition.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/dtos/filter/notion_filter.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/dtos/paged_response/notion_paged_response.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/notion_api_client.dart';
import 'package:rxdart/rxdart.dart';

NotionPagedResponse<NotionPageHiringJobOffer> parseHiringJobOffersResponse(String responseBody) {
  Map<String, dynamic> response = json.decode(responseBody);
  return NotionPagedResponse.fromJson(response, (p) => NotionPageHiringJobOffer.fromJson(p));
}

NotionDbHiringJobOffer parseDbHiringJobOfferResponse(String responseBody) {
  Map<String, dynamic> response = json.decode(responseBody);
  return NotionDbHiringJobOffer.fromJson(response);
}

class HiringJobOfferRepository {
  static const favoriteHiringJobOffersBox = 'favoriteHiringJobOffersBox';

  final _favoriteHiringJobOfferIdsSubject = PublishSubject<List<String>>();

  Stream<List<String>> get favoriteHiringJobOfferIdsStream => _favoriteHiringJobOfferIdsSubject.stream;

  Future<PagedList<HiringJobOffer>> getHiringJobOffers({
    required int pageSize, String? startCursor,
    HiringJobOfferFilters? filters,
    String? searchText
  }) async {

    List<NotionFilter> notionFilters = [];
    if(filters != null && filters.seniority.isNotEmpty) {
      notionFilters.add(NotionFilter.or(filters.seniority.map((value) =>
        NotionFilter.select('Seniority', NotionFilterCondition.equals(value))
      ).toList()));
    }

    if(filters != null && filters.team.isNotEmpty) {
      notionFilters.add(NotionFilter.or(filters.team.map((value) =>
        NotionFilter.select('Team', NotionFilterCondition.equals(value))
      ).toList()));
    }

    if(filters != null && filters.contratto.isNotEmpty) {
      notionFilters.add(NotionFilter.or(filters.contratto.map((value) =>
        NotionFilter.select('Contratto', NotionFilterCondition.equals(value))
      ).toList()));
    }

    if(searchText != null && searchText.isNotEmpty) {
      List<String> searchProperties = [
        'Name',
        'Qualifica',
        'Retribuzione',
        'Descrizione offerta',
        'Come candidarsi',
        'Località',
        'Nome azienda',
        'Stato di pubblicazione'
      ];

      notionFilters.add(NotionFilter.or(searchProperties.map((property) =>
        NotionFilter.richText(property, NotionFilterCondition.contains(searchText))
      ).toList()));
    }

    NotionDbQueryRequest notionDbQueryRequest = NotionDbQueryRequest(
      pageSize: pageSize,
      startCursor: startCursor,
      filter: notionFilters.isNotEmpty ? NotionFilter.and(notionFilters) : null
    );

    Map<String, dynamic> body = await compute(notionDbQueryRequestToJson, notionDbQueryRequest);
    Response response = await NotionApiClient().makeRequest(HttpMethods.post, '/databases/${NotionApiClient.hiringJobOffersDatabase}/query', body: body);
    NotionPagedResponse<NotionPageHiringJobOffer> notionPageHiringJobOffers = await compute(parseHiringJobOffersResponse, response.body);

    HiringJobOfferMapper hiringJobOfferMapper = HiringJobOfferMapper();
    return PagedListMapper<HiringJobOffer>().fromDTO(notionPageHiringJobOffers, (notionPageHiringJobOffer) => hiringJobOfferMapper.fromDTO(notionPageHiringJobOffer));
  }

  Future<HiringJobOfferOptions> getHiringJobOffersOptions() async {
    Response response = await NotionApiClient().makeRequest(HttpMethods.get, '/databases/${NotionApiClient.hiringJobOffersDatabase}');
    NotionDbHiringJobOffer notionDbHiringJobOffer = await compute(parseDbHiringJobOfferResponse, response.body);

    return HiringJobOfferOptionsMapper().fromDTO(notionDbHiringJobOffer);
  }

  Future<void> toggleFavoriteHiringJobOffer(String hiringJobOfferId) async {
    Box<String> box = await Hive.openBox(favoriteHiringJobOffersBox);
    MapEntry<dynamic, String>? entry = box.toMap().entries
      .firstWhereOrNull((entry) => entry.value == hiringJobOfferId);

    if(entry != null) {
      await box.delete(entry.key);
    } else {
      await box.add(hiringJobOfferId);
    }

    _favoriteHiringJobOfferIdsSubject.add(await getFavoriteHiringJobOfferIds());
  }

  Future<List<String>> getFavoriteHiringJobOfferIds() async {
    Box<String> box = await Hive.openBox(favoriteHiringJobOffersBox);
    return box.values.toList();
  }
}