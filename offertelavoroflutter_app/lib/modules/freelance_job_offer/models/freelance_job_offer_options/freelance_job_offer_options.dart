import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/common/models/select_option/select_option.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/notion/notion_db_freelance_job_offer/notion_db_freelance_job_offer.dart';

part 'freelance_job_offer_options.freezed.dart';

@freezed
class FreelanceJobOfferOptions with _$FreelanceJobOfferOptions {
  const factory FreelanceJobOfferOptions({
    required List<SelectOption>? nda,
    required List<SelectOption>? tipoDiRelazione,
  }) = _FreelanceJobOfferOptions;

  factory FreelanceJobOfferOptions.fromNotion(NotionDbFreelanceJobOffer notionDbFreelanceJobOffer) {
    return FreelanceJobOfferOptions(
      nda: notionDbFreelanceJobOffer.properties.nda?.select.options.map(SelectOption.fromNotion).toList(),
      tipoDiRelazione: notionDbFreelanceJobOffer.properties.tipoDiRelazione?.select.options.map(SelectOption.fromNotion).toList(),
    );
  }
}