part of 'hiring_job_offer_filter_sheet_bloc.dart';

@freezed
class HiringJobOfferFilterSheetState with _$HiringJobOfferFilterSheetState {
  const factory HiringJobOfferFilterSheetState({
    @Default(HiringJobOfferFilterSheetStatus.initial)
    HiringJobOfferFilterSheetStatus status,
    dynamic error,

    List<SelectOption>? contrattoOptions,
    @Default([])
    List<String> contrattoSelectedNames,

    List<SelectOption>? teamOptions,
    @Default([])
    List<String> teamSelectedNames,

    List<SelectOption>? seniorityOptions,
    @Default([])
    List<String> senioritySelectedNames,
  }) = _HiringJobOfferFilterSheetState;
}

enum HiringJobOfferFilterSheetStatus {
  initial,
  loading,
  success,
  error
}
