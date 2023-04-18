import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paged_list/paged_list.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/repositories/hiring_job_offer_repository.dart';

part 'favorite_hiring_job_offer_list_event.dart';
part 'favorite_hiring_job_offer_list_state.dart';
part 'favorite_hiring_job_offer_list_bloc.freezed.dart';

class FavoriteHiringJobOfferListBloc extends Bloc<FavoriteHiringJobOfferListEvent, FavoriteHiringJobOfferListState> {
  final HiringJobOfferRepository _hiringJobOfferRepository;
  final int pageSize = 5;
  late StreamSubscription<List<String>> _favoriteHiringJobOfferIdsSub;

  FavoriteHiringJobOfferListBloc({
    required HiringJobOfferRepository hiringJobOfferRepository
  }) : _hiringJobOfferRepository = hiringJobOfferRepository, super(const FavoriteHiringJobOfferListState()) {
    on<FavoriteHiringJobOfferListEvent>((event, emit) async {
      await event.when<Future>(
        pageRequested: (pageKey) => _pageRequested(pageKey, emit),
        refreshRequested: () => _refreshRequested(emit),
        favoriteHiringJobOfferToggled: (hiringJobOfferId) => _favoriteHiringJobOfferToggled(hiringJobOfferId, emit),
        favoriteHiringJobOffersChanged: (favoriteHiringJobOffersIds) => _favoriteHiringJobOffersChanged(favoriteHiringJobOffersIds, emit),
      );
    });

    _favoriteHiringJobOfferIdsSub = _hiringJobOfferRepository.favoriteHiringJobOfferIdsStream.listen((favoriteHiringJobOffersIds) {
      add(FavoriteHiringJobOfferListEvent.favoriteHiringJobOffersChanged(favoriteHiringJobOffersIds));
    });
  }

  @override
  Future<void> close() {
    _favoriteHiringJobOfferIdsSub.cancel();
    return super.close();
  }

  _pageRequested(String? pageKey, Emitter<FavoriteHiringJobOfferListState> emit) async {
    try {
      PagedList<HiringJobOffer> pagedList = await _hiringJobOfferRepository.getHiringJobOffers(
        pageSize: pageSize,
        startCursor: pageKey,
        // TODO filter by fav ids
      );

      emit(state.copyWith(
        pagingState: PagingState(
          nextPageKey: pagedList.nextPageKey,
          itemList: (state.pagingState.itemList ?? [])..addAll(pagedList.results),
          error: null,
        ),
        // we fetch the favorites list only on first page load
        favoriteHiringJobOfferIds: (pageKey == null) ? await _hiringJobOfferRepository.getFavoriteHiringJobOfferIds() : state.favoriteHiringJobOfferIds
      ));
    } catch (err) {
      emit(state.copyWith(pagingState: PagingState(
        itemList: state.pagingState.itemList,
        nextPageKey: state.pagingState.nextPageKey,
        error: err
      )));
    }
  }

  _refreshRequested(Emitter<FavoriteHiringJobOfferListState> emit) async {
    emit(state.copyWith(
      pagingState: const PagingState())
    );
  }

  _favoriteHiringJobOfferToggled(String hiringJobOfferId, Emitter<FavoriteHiringJobOfferListState> emit) async {
    await _hiringJobOfferRepository.toggleFavoriteHiringJobOffer(hiringJobOfferId);
  }

  _favoriteHiringJobOffersChanged(List<String> favoriteHiringJobOfferIds, Emitter<FavoriteHiringJobOfferListState> emit) async {
    emit(state.copyWith(
      favoriteHiringJobOfferIds: favoriteHiringJobOfferIds
    ));
  }
}
