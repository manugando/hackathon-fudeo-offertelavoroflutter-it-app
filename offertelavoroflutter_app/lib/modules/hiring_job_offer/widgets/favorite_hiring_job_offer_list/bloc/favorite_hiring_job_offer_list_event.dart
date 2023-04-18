part of 'favorite_hiring_job_offer_list_bloc.dart';

@freezed
class FavoriteHiringJobOfferListEvent with _$FavoriteHiringJobOfferListEvent {
  const factory FavoriteHiringJobOfferListEvent.pageRequested(String? pageKey) = _PageRequested;
  const factory FavoriteHiringJobOfferListEvent.refreshRequested() = _RefreshRequested;
  const factory FavoriteHiringJobOfferListEvent.favoriteHiringJobOfferToggled(String hiringJobOfferId) = _FavoriteHiringJobOfferToggled;
  const factory FavoriteHiringJobOfferListEvent.favoriteHiringJobOffersChanged(List<String> favoriteHiringJobOffersIds) = _FavoriteHiringJobOffersChanged;
}
