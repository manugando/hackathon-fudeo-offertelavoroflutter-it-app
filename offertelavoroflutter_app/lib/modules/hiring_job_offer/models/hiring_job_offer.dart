import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer_properties.dart';

part 'hiring_job_offer.freezed.dart';
part 'hiring_job_offer.g.dart';

@freezed
class HiringJobOffer with _$HiringJobOffer {

  const factory HiringJobOffer({
    required String id,
    required bool archived,
    required String url,
    required HiringJobOfferProperties properties
  }) = _HiringJobOffer;

  factory HiringJobOffer.fromJson(Map<String, dynamic> json) => _$HiringJobOfferFromJson(json);
}