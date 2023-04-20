import 'package:flutter/material.dart';
import 'package:offertelavoroflutter_app/helpers/styles.dart';

class ProgressDots extends StatelessWidget {
  final int total;
  final int activeIndex;
  const ProgressDots({Key? key, required this.total, required this.activeIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for(int i = 0 ; i < total ; i++) {
      widgets.add(_buildDots(activeIndex == i));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widgets,
    );
  }
  
  Widget _buildDots(bool active) {
    return AnimatedContainer(
      width: 8,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? Styles.primaryDark : Styles.primaryDark.withAlpha(100)
      ),
    );
  }
}
