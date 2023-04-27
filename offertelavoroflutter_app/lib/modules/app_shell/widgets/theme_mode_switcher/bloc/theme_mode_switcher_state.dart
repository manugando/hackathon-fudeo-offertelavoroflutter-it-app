part of 'theme_mode_switcher_bloc.dart';

@freezed
class ThemeModeSwitcherState with _$ThemeModeSwitcherState {
  const factory ThemeModeSwitcherState({
    @Default(false)
    bool darkMode
  }) = _ThemeModeSwitcherState;
}
