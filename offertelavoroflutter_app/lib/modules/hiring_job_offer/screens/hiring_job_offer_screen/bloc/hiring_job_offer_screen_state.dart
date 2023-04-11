part of 'hiring_job_offer_screen_bloc.dart';

@freezed
class HiringJobOfferScreenState with _$HiringJobOfferScreenState {
  const factory HiringJobOfferScreenState({
    required PagingState<String?, HiringJobOffer> pagingState
  }) = _HiringJobOfferScreenState;
}
