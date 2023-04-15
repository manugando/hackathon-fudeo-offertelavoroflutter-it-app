import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paged_list/paged_list.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer_filters/hiring_job_offer_filters.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer_options/hiring_job_offer_options.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/notion/notion_db_hiring_job_offer/notion_db_hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/notion/notion_page_hiring_job_offer/notion_page_hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/db_query_request/notion_db_query_request.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/filter/filter_condition/notion_filter_condition.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/filter/notion_filter.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/paged_response/notion_paged_response.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/notion_api_client.dart';

NotionPagedResponse<NotionPageHiringJobOffer> parseHiringJobOffersResponse(String responseBody) {
  Map<String, dynamic> response = json.decode(responseBody);
  return NotionPagedResponse.fromJson(response, (p) => NotionPageHiringJobOffer.fromJson(p));
}

NotionDbHiringJobOffer parseDbHiringJobOfferResponse(String responseBody) {
  Map<String, dynamic> response = json.decode(responseBody);
  return NotionDbHiringJobOffer.fromJson(response);
}

class HiringJobOfferRepository {

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

    return PagedList.fromNotion(notionPageHiringJobOffers, (notionPageHiringJobOffer) => HiringJobOffer.fromNotion(notionPageHiringJobOffer));
  }

  Future<HiringJobOfferOptions> getHiringJobOffersOptions() async {
    Response response = await NotionApiClient().makeRequest(HttpMethods.get, '/databases/${NotionApiClient.hiringJobOffersDatabase}');
    NotionDbHiringJobOffer notionDbHiringJobOffer = await compute(parseDbHiringJobOfferResponse, response.body);

    return HiringJobOfferOptions.fromNotion(notionDbHiringJobOffer);
  }
}