import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paged_list/paged_list.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/repositories/hiring_job_offer_repository.dart';

part 'hiring_job_offer_screen_event.dart';
part 'hiring_job_offer_screen_state.dart';
part 'hiring_job_offer_screen_bloc.freezed.dart';

class HiringJobOfferScreenBloc extends Bloc<HiringJobOfferScreenEvent, HiringJobOfferScreenState> {
  final HiringJobOfferRepository _hiringJobOfferRepository;
  final int pageSize = 3;

  HiringJobOfferScreenBloc({
    required HiringJobOfferRepository hiringJobOfferRepository
  }) : _hiringJobOfferRepository = hiringJobOfferRepository, super(const HiringJobOfferScreenState(pagingState: PagingState())) {
    on<HiringJobOfferScreenEvent>((event, emit) async {
      await event.when<Future>(
        pageRequested: (pageKey) => _pageRequested(pageKey, emit)
      );
    });
  }

  _pageRequested(String? pageKey, Emitter<HiringJobOfferScreenState> emit) async {
    try {
      PagedList<HiringJobOffer> pagedList = await _hiringJobOfferRepository.getHiringJobOffers(
        pageSize: pageSize,
        startCursor: pageKey
      );

      emit(state.copyWith(pagingState: PagingState(
        nextPageKey: pagedList.nextPageKey,
        itemList: (state.pagingState.itemList ?? [])..addAll(pagedList.results),
        error: null,
      )));
    } catch (err) {
      emit(state.copyWith(pagingState: PagingState(
        itemList: state.pagingState.itemList,
        nextPageKey: state.pagingState.nextPageKey,
        error: err
      )));
    }
  }
}
