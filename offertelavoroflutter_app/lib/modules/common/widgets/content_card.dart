import 'package:flutter/material.dart';
import 'package:offertelavoroflutter_app/helpers/styles.dart';

class ContentCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final Function()? onTap;
  final Color color;
  const ContentCard({Key? key, required this.child, this.padding, this.onTap, this.color = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 20,
            color: const Color(0xFF99ABC6).withAlpha(45)
          )
        ]
      ),
      margin: const EdgeInsets.only(
        right: Styles.screenHorizPadding,
        left: Styles.screenHorizPadding,
        bottom: 16
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(20),
          child: child,
        )
      ),
    );
  }
}
