import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_mode_switcher_event.dart';
part 'theme_mode_switcher_state.dart';
part 'theme_mode_switcher_bloc.freezed.dart';

class ThemeModeSwitcherBloc extends Bloc<ThemeModeSwitcherEvent, ThemeModeSwitcherState> {
  ThemeModeSwitcherBloc() : super(const ThemeModeSwitcherState(darkMode: false)) {
    on<ThemeModeSwitcherEvent>((event, emit) {
      event.when(
        themeModeToggled: () => emit(state.copyWith(darkMode: !state.darkMode)),
      );
    });
  }
}
