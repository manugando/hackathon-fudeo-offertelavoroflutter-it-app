part of 'onboarding_screen_bloc.dart';

@freezed
class OnboardingScreenState with _$OnboardingScreenState {
  const factory OnboardingScreenState({
    @Default(0)
    int activeStepIndex,
    @Default(true)
    bool hasMoreSteps
  }) = _OnboardingScreenState;
}
