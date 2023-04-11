import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  const ContentCard({Key? key, required this.child, this.padding}) : super(key: key);

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
      padding: padding ?? const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      child: child,
    );
  }
}
