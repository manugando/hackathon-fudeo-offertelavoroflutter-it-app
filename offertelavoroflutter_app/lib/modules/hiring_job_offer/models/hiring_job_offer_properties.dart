import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/page_properties/title/notion_title.dart';

part 'hiring_job_offer_properties.freezed.dart';
part 'hiring_job_offer_properties.g.dart';

@freezed
class HiringJobOfferProperties with _$HiringJobOfferProperties {

  const factory HiringJobOfferProperties({
    @JsonKey(name: 'Name')
    required NotionTitle name,
  }) = _HiringJobOfferProperties;

  factory HiringJobOfferProperties.fromJson(Map<String, dynamic> json) => _$HiringJobOfferPropertiesFromJson(json);
}