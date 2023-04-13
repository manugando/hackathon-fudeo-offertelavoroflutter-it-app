import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/common/models/select_option/select_option.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer_options.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/repositories/hiring_job_offer_repository.dart';

part 'hiring_job_offer_filter_sheet_event.dart';
part 'hiring_job_offer_filter_sheet_state.dart';
part 'hiring_job_offer_filter_sheet_bloc.freezed.dart';

class HiringJobOfferFilterSheetBloc extends Bloc<HiringJobOfferFilterSheetEvent, HiringJobOfferFilterSheetState> {
  final HiringJobOfferRepository _hiringJobOfferRepository;

  HiringJobOfferFilterSheetBloc({
    required HiringJobOfferRepository hiringJobOfferRepository
  }) : _hiringJobOfferRepository = hiringJobOfferRepository, super(const HiringJobOfferFilterSheetState()) {
    on<HiringJobOfferFilterSheetEvent>((event, emit) async {
      await event.when<Future>(
        optionsRequested: () => _optionsRequested(emit),
        contrattoOptionToggled: (optionName) => _contrattoOptionToggled(optionName, emit),
        teamOptionToggled: (optionName) => _teamOptionToggled(optionName, emit),
        seniorityOptionToggled: (optionName) => _seniorityOptionToggled(optionName, emit),
        filtersCleared: () => _filtersCleared(emit)
      );
    });
  }

  _optionsRequested(Emitter<HiringJobOfferFilterSheetState> emit) async {
    try {
      emit(state.copyWith(
        status: HiringJobOfferFilterSheetStatus.loading
      ));
      HiringJobOfferOptions hiringJobOfferOptions = await _hiringJobOfferRepository.getHiringJobOffersOptions();
      emit(state.copyWith(
        status: HiringJobOfferFilterSheetStatus.success,
        teamOptions: hiringJobOfferOptions.team,
        seniorityOptions: hiringJobOfferOptions.seniority,
        contrattoOptions: hiringJobOfferOptions.contratto,
      ));
    } catch(error) {
      emit(state.copyWith(
        status: HiringJobOfferFilterSheetStatus.error,
        error: error
      ));
    }
  }

  _contrattoOptionToggled(String optionName, Emitter<HiringJobOfferFilterSheetState> emit) async {
    emit(state.copyWith(
      contrattoSelectedNames: _toggleItemInList(optionName, state.contrattoSelectedNames)
    ));
  }

  _teamOptionToggled(String optionName, Emitter<HiringJobOfferFilterSheetState> emit) async {
    emit(state.copyWith(
      teamSelectedNames: _toggleItemInList(optionName, state.teamSelectedNames)
    ));
  }

  _seniorityOptionToggled(String optionName, Emitter<HiringJobOfferFilterSheetState> emit) async {
    emit(state.copyWith(
      senioritySelectedNames: _toggleItemInList(optionName, state.senioritySelectedNames)
    ));
  }

  _filtersCleared(Emitter<HiringJobOfferFilterSheetState> emit) {
    emit(state.copyWith(
      contrattoSelectedNames: [],
      senioritySelectedNames: [],
      teamSelectedNames: []
    ));
  }

  List<String> _toggleItemInList(String item, List<String> items) {
    List<String> copy = items.toList();
    if(copy.contains(item)) {
      return copy..remove(item);
    } else {
      return copy..add(item);
    }
  }
}
