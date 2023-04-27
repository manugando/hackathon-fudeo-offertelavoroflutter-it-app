import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/app_preferences/repositories/app_preferences_repository.dart';

part 'theme_mode_switcher_event.dart';
part 'theme_mode_switcher_state.dart';
part 'theme_mode_switcher_bloc.freezed.dart';

class ThemeModeSwitcherBloc extends Bloc<ThemeModeSwitcherEvent, ThemeModeSwitcherState> {
  final AppPreferencesRepository _appPreferencesRepository;

  ThemeModeSwitcherBloc({
    required AppPreferencesRepository appPreferencesRepository
  }) : _appPreferencesRepository = appPreferencesRepository, super(ThemeModeSwitcherState(darkMode: appPreferencesRepository.isDarkMode())) {
    on<ThemeModeSwitcherEvent>((event, emit) {
      event.when(
        themeModeToggled: () => _themeModeToggled(emit),
      );
    });
  }

  _themeModeToggled(Emitter<ThemeModeSwitcherState> emit) {
    bool newDarkMode = !state.darkMode;
    _appPreferencesRepository.setDarkMode(newDarkMode);
    emit(state.copyWith(darkMode: newDarkMode));
  }
}
