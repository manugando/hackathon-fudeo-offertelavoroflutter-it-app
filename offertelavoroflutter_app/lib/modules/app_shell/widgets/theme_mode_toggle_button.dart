import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offertelavoroflutter_app/modules/app_shell/widgets/theme_mode_switcher/bloc/theme_mode_switcher_bloc.dart';

class ThemeModeToggleButton extends StatelessWidget {
  const ThemeModeToggleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<ThemeModeSwitcherBloc>().add(const ThemeModeSwitcherEvent.themeModeToggled()),
      icon: BlocBuilder<ThemeModeSwitcherBloc, ThemeModeSwitcherState>(
        builder: (context, state) {
         return SvgPicture.asset('assets/icons/${state.darkMode ? 'sunny' : 'moon'}.svg',
           colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)
         );
        }
      )
    );
  }
}
