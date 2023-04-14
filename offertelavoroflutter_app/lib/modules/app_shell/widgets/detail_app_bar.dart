import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailAppBar extends StatelessWidget with PreferredSizeWidget {
  final double appBarHeight = 60;
  final List<Widget>? actions;
  const DetailAppBar({Key? key, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: appBarHeight,
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      actions: actions,
      leading: Navigator.of(context).canPop() ? IconButton(
        onPressed: Navigator.of(context).maybePop,
        icon: SvgPicture.asset('assets/icons/arrow-left.svg', width: 24),
      ) : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
