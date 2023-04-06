import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paginated_list/paginated_list.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/notion_api_client.dart';

PaginatedList<HiringJobOffer> parseHiringJobOffersResponse(String responseBody) {
  Map<String, dynamic> response = json.decode(responseBody);
  return PaginatedList.fromJson(response, (p) => HiringJobOffer.fromJson(p));
}

class HiringJobOfferRepository {
  Future<PaginatedList<HiringJobOffer>> getHiringJobOffers() async {
    Response response = await NotionApiClient().makeRequest(HttpMethods.post, '/databases/${NotionApiClient.hiringJobOffersDatabase}/query');
    return compute(parseHiringJobOffersResponse, response.body);
  }
}