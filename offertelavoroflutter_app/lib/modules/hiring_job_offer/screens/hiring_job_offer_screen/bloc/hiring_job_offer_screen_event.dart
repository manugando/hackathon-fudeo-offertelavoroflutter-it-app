part of 'hiring_job_offer_screen_bloc.dart';

@freezed
class HiringJobOfferScreenEvent with _$HiringJobOfferScreenEvent {
  const factory HiringJobOfferScreenEvent.pageRequested(String? pageKey) = _PageRequested;
  const factory HiringJobOfferScreenEvent.refreshRequested() = _RefreshRequested;
  const factory HiringJobOfferScreenEvent.searchQueryChanged(String searchQuery) = _SearchQueryChanged;
  const factory HiringJobOfferScreenEvent.filtersChanged(HiringJobOfferFilters filters) = _FiltersChanged;
}
