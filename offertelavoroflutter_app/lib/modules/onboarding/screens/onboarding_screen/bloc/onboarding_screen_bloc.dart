import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/app_preferences/repositories/app_preferences_repository.dart';

part 'onboarding_screen_event.dart';
part 'onboarding_screen_state.dart';
part 'onboarding_screen_bloc.freezed.dart';

class OnboardingScreenBloc extends Bloc<OnboardingScreenEvent, OnboardingScreenState> {
  final AppPreferencesRepository _appPreferencesRepository;

  OnboardingScreenBloc({
    required AppPreferencesRepository appPreferencesRepository
  }) : _appPreferencesRepository = appPreferencesRepository, super(const OnboardingScreenState()) {
    on<OnboardingScreenEvent>((event, emit) async {
      await event.when<Future>(
        nextStepRequested: () => _nextStepRequested(emit)
      );
    });
  }

  _nextStepRequested(Emitter<OnboardingScreenState> emit) async {
    if(state.activeStepIndex == state.totalSteps - 1) {
      await _appPreferencesRepository.setOnboardingDone(true);
      emit(state.copyWith(
        status: OnboardingScreenStatus.done
      ));
    } else {
      emit(state.copyWith(
        status: OnboardingScreenStatus.inProgress,
        activeStepIndex: state.activeStepIndex + 1,
      ));
    }
  }
}
