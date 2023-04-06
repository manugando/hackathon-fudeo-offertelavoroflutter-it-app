import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paged_list/paged_list.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/notion/notion_page_hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/paged_response/notion_paged_response.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/notion_api_client.dart';

NotionPagedResponse<NotionPageHiringJobOffer> parseHiringJobOffersResponse(String responseBody) {
  Map<String, dynamic> response = json.decode(responseBody);
  return NotionPagedResponse.fromJson(response, (p) => NotionPageHiringJobOffer.fromJson(p));
}

class HiringJobOfferRepository {
  Future<PagedList<HiringJobOffer>> getHiringJobOffers({required int pageSize, String? startCursor}) async {
    Map<String, dynamic> body = {
      'page_size': pageSize
    };

    if(startCursor != null) {
      body['start_cursor'] = startCursor;
    }

    Response response = await NotionApiClient().makeRequest(HttpMethods.post, '/databases/${NotionApiClient.hiringJobOffersDatabase}/query', body: body);
    NotionPagedResponse<NotionPageHiringJobOffer> notionPageHiringJobOffers = await compute(parseHiringJobOffersResponse, response.body);

    return PagedList.fromNotion(notionPageHiringJobOffers, (notionPageHiringJobOffer) => HiringJobOffer.fromNotion(notionPageHiringJobOffer));
  }
}