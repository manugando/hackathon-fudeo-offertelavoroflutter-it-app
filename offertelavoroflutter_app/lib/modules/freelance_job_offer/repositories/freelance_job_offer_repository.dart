import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paged_list/paged_list.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/freelance_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/notion/notion_page_freelance_job_offer/notion_page_freelance_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/db_query_request/notion_db_query_request.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/filter/filter_condition/notion_filter_condition.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/filter/notion_filter.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/paged_response/notion_paged_response.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/notion_api_client.dart';

NotionPagedResponse<NotionPageFreelanceJobOffer> parseFreelanceJobOffersResponse(String responseBody) {
  Map<String, dynamic> response = json.decode(responseBody);
  return NotionPagedResponse.fromJson(response, (p) => NotionPageFreelanceJobOffer.fromJson(p));
}

class FreelanceJobOfferRepository {
  Future<PagedList<FreelanceJobOffer>> getFreelanceJobOffers({
    required int pageSize, String? startCursor,
    String? searchText
  }) async {
    List<NotionFilter> notionFilters = [];

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

    return PagedList.fromNotion(notionPageFreelanceJobOffers, (notionPageFreelanceJobOffer) => FreelanceJobOffer.fromNotion(notionPageFreelanceJobOffer));
  }
}