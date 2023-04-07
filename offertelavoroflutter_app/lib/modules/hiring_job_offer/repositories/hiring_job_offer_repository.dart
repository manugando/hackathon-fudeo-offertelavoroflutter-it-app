import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paged_list/paged_list.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer.dart';
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

Map<String, dynamic> notionDbQueryRequestToJson(NotionDbQueryRequest notionDbQueryRequest) {
  return notionDbQueryRequest.toJson();
}

class HiringJobOfferRepository {

  Future<PagedList<HiringJobOffer>> getHiringJobOffers({
    required int pageSize, String? startCursor,
    List<String>? seniority, List<String>? team, List<String>? contratto,
    String? searchText
  }) async {

    List<NotionFilter> filters = [];
    if(seniority != null && seniority.isNotEmpty) {
      filters.add(NotionFilter.or(seniority.map((value) =>
        NotionFilter.select('Seniority', NotionFilterCondition.equals(value))
      ).toList()));
    }

    if(team != null && team.isNotEmpty) {
      filters.add(NotionFilter.or(team.map((value) =>
        NotionFilter.select('Team', NotionFilterCondition.equals(value))
      ).toList()));
    }

    if(contratto != null && contratto.isNotEmpty) {
      filters.add(NotionFilter.or(contratto.map((value) =>
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

      filters.add(NotionFilter.or(searchProperties.map((property) =>
        NotionFilter.richText(property, NotionFilterCondition.contains(searchText))
      ).toList()));
    }

    NotionDbQueryRequest notionDbQueryRequest = NotionDbQueryRequest(
      pageSize: pageSize,
      startCursor: startCursor,
      filter: filters.isNotEmpty ? NotionFilter.and(filters) : null
    );

    Map<String, dynamic> body = await compute(notionDbQueryRequestToJson, notionDbQueryRequest);
    Response response = await NotionApiClient().makeRequest(HttpMethods.post, '/databases/${NotionApiClient.hiringJobOffersDatabase}/query', body: body);
    NotionPagedResponse<NotionPageHiringJobOffer> notionPageHiringJobOffers = await compute(parseHiringJobOffersResponse, response.body);

    return PagedList.fromNotion(notionPageHiringJobOffers, (notionPageHiringJobOffer) => HiringJobOffer.fromNotion(notionPageHiringJobOffer));
  }
}