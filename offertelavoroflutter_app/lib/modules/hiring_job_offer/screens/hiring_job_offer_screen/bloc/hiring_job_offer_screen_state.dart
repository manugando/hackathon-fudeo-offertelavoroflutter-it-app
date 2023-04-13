part of 'hiring_job_offer_screen_bloc.dart';

@freezed
class HiringJobOfferScreenState with _$HiringJobOfferScreenState {
  const factory HiringJobOfferScreenState({
    @Default(PagingState())
    PagingState<String?, HiringJobOffer> pagingState,
    @Default('')
    String searchQuery,
    @Default(HiringJobOfferFilters())
    HiringJobOfferFilters filters
  }) = _HiringJobOfferScreenState;
}
