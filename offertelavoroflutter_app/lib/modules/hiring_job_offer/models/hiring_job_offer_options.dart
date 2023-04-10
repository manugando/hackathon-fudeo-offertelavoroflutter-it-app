import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/common/models/select_option/select_option.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/notion/notion_db_hiring_job_offer/notion_db_hiring_job_offer.dart';

part 'hiring_job_offer_options.freezed.dart';

@freezed
class HiringJobOfferOptions with _$HiringJobOfferOptions {
  const factory HiringJobOfferOptions({
    required List<SelectOption>? team,
    required List<SelectOption>? contratto,
    required List<SelectOption>? seniority,
    required List<SelectOption>? ral,
  }) = _HiringJobOfferOptions;

  factory HiringJobOfferOptions.fromNotion(NotionDbHiringJobOffer notionDbHiringJobOffer) {
    return HiringJobOfferOptions(
      team: notionDbHiringJobOffer.properties.team.select.options.map(SelectOption.fromNotion).toList(),
      contratto: notionDbHiringJobOffer.properties.contratto.select.options.map(SelectOption.fromNotion).toList(),
      seniority: notionDbHiringJobOffer.properties.seniority.select.options.map(SelectOption.fromNotion).toList(),
      ral: notionDbHiringJobOffer.properties.ral.select.options.map(SelectOption.fromNotion).toList(),
    );
  }
}