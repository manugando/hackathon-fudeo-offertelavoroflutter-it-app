import 'package:freezed_annotation/freezed_annotation.dart';

part 'hiring_job_offer.freezed.dart';
part 'hiring_job_offer.g.dart';

@freezed
class HiringJobOffer with _$HiringJobOffer {

  const factory HiringJobOffer({
    required String id,
    required bool archived,
    required String url,
  }) = _HiringJobOffer;

  factory HiringJobOffer.fromJson(Map<String, dynamic> json) => _$HiringJobOfferFromJson(json);
}