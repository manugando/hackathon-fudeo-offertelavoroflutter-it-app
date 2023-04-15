import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:offertelavoroflutter_app/helpers/rx_helper.dart';
import 'package:offertelavoroflutter_app/modules/common/models/paged_list/paged_list.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer_filters/hiring_job_offer_filters.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/repositories/hiring_job_offer_repository.dart';
import 'package:rxdart/rxdart.dart';

part 'hiring_job_offer_list_screen_event.dart';
part 'hiring_job_offer_list_screen_state.dart';
part 'hiring_job_offer_list_screen_bloc.freezed.dart';

class HiringJobOfferListScreenBloc extends Bloc<HiringJobOfferListScreenEvent, HiringJobOfferListScreenState> {
  final HiringJobOfferRepository _hiringJobOfferRepository;
  final int pageSize = 3;

  HiringJobOfferListScreenBloc({
    required HiringJobOfferRepository hiringJobOfferRepository
  }) : _hiringJobOfferRepository = hiringJobOfferRepository, super(const HiringJobOfferListScreenState()) {
    on<HiringJobOfferListScreenEvent>((event, emit) async {
      await event.when<Future>(
        pageRequested: (pageKey) => _pageRequested(pageKey, emit),
        searchQueryChanged: (searchQuery) => _searchQueryChanged(searchQuery, emit),
        refreshRequested: () => _refreshRequested(emit),
        filtersChanged: (filters) => _filtersChanged(filters, emit)
      );
    }, transformer: (events, mapper) => RxHelper.maybeDebounceEvents(
        test: (event) => event.maybeMap(searchQueryChanged: (value) => true, orElse: () => false),
        debounceTime: const Duration(milliseconds: 500),
        events: events,
      ).flatMap(mapper)
    );
  }

  _pageRequested(String? pageKey, Emitter<HiringJobOfferListScreenState> emit) async {
    try {
      PagedList<HiringJobOffer> pagedList = await _hiringJobOfferRepository.getHiringJobOffers(
        pageSize: pageSize,
        startCursor: pageKey,
        searchText: state.searchQuery,
        filters: state.filters
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

  _searchQueryChanged(String searchQuery, Emitter<HiringJobOfferListScreenState> emit) async {
    if(searchQuery == state.searchQuery) return;

    emit(state.copyWith(
      searchQuery: searchQuery,
      pagingState: const PagingState())
    );
  }

  _refreshRequested(Emitter<HiringJobOfferListScreenState> emit) async {
    emit(state.copyWith(
      pagingState: const PagingState())
    );
  }

  _filtersChanged(HiringJobOfferFilters filters, Emitter<HiringJobOfferListScreenState> emit) async {
    emit(state.copyWith(
      pagingState: const PagingState(),
      filters: filters
    ));
  }
}
