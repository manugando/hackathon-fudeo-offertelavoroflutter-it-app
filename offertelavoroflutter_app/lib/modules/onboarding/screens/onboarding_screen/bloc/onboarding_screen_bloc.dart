import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_screen_event.dart';
part 'onboarding_screen_state.dart';
part 'onboarding_screen_bloc.freezed.dart';

class OnboardingScreenBloc extends Bloc<OnboardingScreenEvent, OnboardingScreenState> {
  OnboardingScreenBloc() : super(const OnboardingScreenState()) {
    on<OnboardingScreenEvent>((event, emit) {
      event.when(
        nextStepRequested: () => emit(state.copyWith(activeStepIndex: state.activeStepIndex + 1))
      );
    });
  }
}
