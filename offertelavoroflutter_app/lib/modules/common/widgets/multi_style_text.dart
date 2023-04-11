import 'package:flutter/material.dart';
import 'package:offertelavoroflutter_app/modules/common/models/styled_text/styled_text.dart';


class MultiStyleText extends StatelessWidget {
  final List<StyledText> items;
  final TextStyle? baseStyle;
  final TextAlign textAlign;

  const MultiStyleText({Key? key, required this.items, this.baseStyle,
    this.textAlign = TextAlign.start}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        children: items.map((styledText) => TextSpan(
          text: styledText.text,
          style: styledText.style.merge(baseStyle)
        )).toList()
      )
    );
  }
}
