part of 'onboarding_screen_bloc.dart';

enum OnboardingScreenStatus {
  initial, inProgress, done
}

@freezed
class OnboardingScreenState with _$OnboardingScreenState {
  const OnboardingScreenState._();

  const factory OnboardingScreenState({
    @Default(OnboardingScreenStatus.initial)
    OnboardingScreenStatus status,
    @Default(0)
    int activeStepIndex,
    @Default(4)
    int totalSteps
  }) = _OnboardingScreenState;

  bool get hasMoreSteps => activeStepIndex < (totalSteps - 1);
}
