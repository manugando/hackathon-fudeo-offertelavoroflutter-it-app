import 'package:freezed_annotation/freezed_annotation.dart';

part 'hiring_job_offer_filters.freezed.dart';

@freezed
class HiringJobOfferFilters with _$HiringJobOfferFilters {
  const factory HiringJobOfferFilters({
    @Default([])
    List<String> seniority,
    @Default([])
    List<String> team,
    @Default([])
    List<String> contratto
  }) = _HiringJobOfferFilters;
}