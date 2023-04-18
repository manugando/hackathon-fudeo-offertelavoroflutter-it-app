part of 'favorite_hiring_job_offer_list_bloc.dart';

@freezed
class FavoriteHiringJobOfferListState with _$FavoriteHiringJobOfferListState {
  const factory FavoriteHiringJobOfferListState({
    @Default(PagingState())
    PagingState<String?, HiringJobOffer> pagingState,
    @Default([])
    List<String> favoriteHiringJobOfferIds
  }) = _FavoriteHiringJobOfferListState;
}
