import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offertelavoroflutter_app/modules/app_shell/widgets/theme_mode_switcher/bloc/theme_mode_switcher_bloc.dart';

class ThemeModeSwitcher extends StatelessWidget {
  final Widget Function(ThemeMode) builder;
  const ThemeModeSwitcher({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeSwitcherBloc, ThemeModeSwitcherState>(
      builder: (context, state) => builder(state.darkMode ? ThemeMode.dark : ThemeMode.light),
    );
  }
}

