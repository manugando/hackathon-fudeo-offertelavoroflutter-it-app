import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paged_list/paged_list.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/freelance_job_offer/freelance_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/freelance_job_offer_filters/freelance_job_offer_filters.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/freelance_job_offer_options/freelance_job_offer_options.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/notion/notion_db_freelance_job_offer/notion_db_freelance_job_offer.dart';
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

NotionDbFreelanceJobOffer parseDbFreelanceJobOfferResponse(String responseBody) {
  Map<String, dynamic> response = json.decode(responseBody);
  return NotionDbFreelanceJobOffer.fromJson(response);
}

class FreelanceJobOfferRepository {
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

    return PagedList.fromNotion(notionPageFreelanceJobOffers, (notionPageFreelanceJobOffer) => FreelanceJobOffer.fromNotion(notionPageFreelanceJobOffer));
  }

  Future<FreelanceJobOfferOptions> getFreelanceJobOffersOptions() async {
    Response response = await NotionApiClient().makeRequest(HttpMethods.get, '/databases/${NotionApiClient.freelanceJobOffersDatabase}');
    NotionDbFreelanceJobOffer notionDbFreelanceJobOffer = await compute(parseDbFreelanceJobOfferResponse, response.body);

    return FreelanceJobOfferOptions.fromNotion(notionDbFreelanceJobOffer);
  }
}