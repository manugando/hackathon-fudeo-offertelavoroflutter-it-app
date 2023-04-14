import 'package:flutter/material.dart';
import 'package:offertelavoroflutter_app/constants/styles.dart';

class ContentCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final Function()? onTap;
  const ContentCard({Key? key, required this.child, this.padding, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 60,
            color: const Color(0xFF99ABC6).withAlpha(45)
          )
        ]
      ),
      margin: const EdgeInsets.only(
        right: Styles.screenHorizPadding,
        left: Styles.screenHorizPadding,
        bottom: 20
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(20),
          child: child,
        )
      ),
    );
  }
}
