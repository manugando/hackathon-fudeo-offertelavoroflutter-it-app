import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:http/http.dart';
import 'package:offertelavoroflutter_app/modules/common/mappers/paged_list_mapper.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paged_list/paged_list.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/mappers/freelance_job_offer_mapper.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/mappers/freelance_job_offer_options_mapper.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/freelance_job_offer/freelance_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/freelance_job_offer_filters/freelance_job_offer_filters.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/freelance_job_offer_options/freelance_job_offer_options.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/dtos/notion_db_freelance_job_offer/notion_db_freelance_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/dtos/notion_page_freelance_job_offer/notion_page_freelance_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/dtos/db_query_request/notion_db_query_request.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/dtos/filter/filter_condition/notion_filter_condition.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/dtos/filter/notion_filter.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/dtos/paged_response/notion_paged_response.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/notion_api_client.dart';
import 'package:rxdart/rxdart.dart';

NotionPagedResponse<NotionPageFreelanceJobOffer> parseFreelanceJobOffersResponse(String responseBody) {
  Map<String, dynamic> response = json.decode(responseBody);
  return NotionPagedResponse.fromJson(response, (p) => NotionPageFreelanceJobOffer.fromJson(p));
}

NotionDbFreelanceJobOffer parseDbFreelanceJobOfferResponse(String responseBody) {
  Map<String, dynamic> response = json.decode(responseBody);
  return NotionDbFreelanceJobOffer.fromJson(response);
}

class FreelanceJobOfferRepository {
  static const favoriteFreelanceJobOffersBox = 'favoriteFreelanceJobOffersBox';

  final _favoriteFreelanceJobOfferIdsSubject = PublishSubject<List<String>>();

  Stream<List<String>> get favoriteFreelanceJobOfferIdsStream => _favoriteFreelanceJobOfferIdsSubject.stream;

  Future<PagedList<FreelanceJobOffer>> getFreelanceJobOffers({
    required int pageSize, String? startCursor,
    FreelanceJobOfferFilters? filters,
    String? searchText
  }) async {
    List<NotionFilter> notionFilters = [];

    if(filters != null && filters.nda.isNotEmpty) {
      notionFilters.add(NotionFilter.or(filters.nda.map((value) =>
        NotionFilter.select('NDA', NotionFilterCondition.equals(value))
      ).toList()));
    }

    if(filters != null && filters.tipoDiRelazione.isNotEmpty) {
      notionFilters.add(NotionFilter.or(filters.tipoDiRelazione.map((value) =>
        NotionFilter.select('Tipo di relazione', NotionFilterCondition.equals(value))
      ).toList()));
    }

    if (searchText != null && searchText.isNotEmpty) {
      List<String> searchProperties = [
        'Tempistiche',
        'Come candidarsi',
        'Richiesta di lavoro',
        'Budget',
        'Codice',
        'Tempistiche di pagamento',
        'Descrizione del progetto',
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
    Response response = await NotionApiClient().makeRequest(HttpMethods.post, '/databases/${NotionApiClient.freelanceJobOffersDatabase}/query', body: body);
    NotionPagedResponse<NotionPageFreelanceJobOffer> notionPageFreelanceJobOffers = await compute(parseFreelanceJobOffersResponse, response.body);

    FreelanceJobOfferMapper freelanceJobOfferMapper = FreelanceJobOfferMapper();
    return PagedListMapper<FreelanceJobOffer>().fromDTO(notionPageFreelanceJobOffers, (notionPageFreelanceJobOffer) => freelanceJobOfferMapper.fromDTO(notionPageFreelanceJobOffer));
  }

  Future<FreelanceJobOfferOptions> getFreelanceJobOffersOptions() async {
    Response response = await NotionApiClient().makeRequest(HttpMethods.get, '/databases/${NotionApiClient.freelanceJobOffersDatabase}');
    NotionDbFreelanceJobOffer notionDbFreelanceJobOffer = await compute(parseDbFreelanceJobOfferResponse, response.body);

    return FreelanceJobOfferOptionsMapper().fromDTO(notionDbFreelanceJobOffer);
  }

  Future<void> toggleFavoriteFreelanceJobOffer(String freelanceJobOfferId) async {
    Box<String> box = await Hive.openBox(favoriteFreelanceJobOffersBox);
    MapEntry<dynamic, String>? entry = box.toMap().entries
      .firstWhereOrNull((entry) => entry.value == freelanceJobOfferId);

    if(entry != null) {
      await box.delete(entry.key);
    } else {
      await box.add(freelanceJobOfferId);
    }

    _favoriteFreelanceJobOfferIdsSubject.add(await getFavoriteFreelanceJobOfferIds());
  }

  Future<List<String>> getFavoriteFreelanceJobOfferIds() async {
    Box<String> box = await Hive.openBox(favoriteFreelanceJobOffersBox);
    return box.values.toList();
  }
}