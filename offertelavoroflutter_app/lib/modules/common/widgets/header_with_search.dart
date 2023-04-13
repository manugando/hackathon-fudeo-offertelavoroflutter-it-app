import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offertelavoroflutter_app/constants/styles.dart';

class HeaderWithSearch extends StatelessWidget {
  final String title;
  final String switchBtnTitle;
  final Function() onSwitch;
  final bool forceElevated;
  final TextEditingController searchController;

  const HeaderWithSearch({Key? key, required this.forceElevated, required this.title,
    required this.switchBtnTitle, required this.onSwitch, required this.searchController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry borderRadius = const BorderRadius.vertical(
      bottom: Radius.circular(30),
    );

    return SliverAppBar(
      titleSpacing: 0,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      pinned: true,
      floating: true,
      bottom: BottomAppBar(searchController: searchController),
      forceElevated: forceElevated,
      flexibleSpace: ClipRRect(
        borderRadius: borderRadius,
        child: SvgPicture.asset('assets/header-bg.svg', fit: BoxFit.cover)
      ),
      title: _buildContent(context),
      toolbarHeight: 120,
    );
  }
  
  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Styles.screenHorizPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 4),
          Text(AppLocalizations.of(context)!.appName,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white)
          ),
          const SizedBox(height: 14),
          Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white)),
          const SizedBox(height: 14),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onSwitch,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset('assets/icons/transaction-horizontal.svg', width: 16),
                const SizedBox(width: 6),
                Text(switchBtnTitle, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Styles.accent)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomAppBar extends StatelessWidget with PreferredSizeWidget {
  final TextEditingController searchController;
  const BottomAppBar({Key? key, required this.searchController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Styles.screenHorizPadding, left: Styles.screenHorizPadding, bottom: 20, top: 20),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset('assets/icons/search.svg'),
                ),
                label: Text(AppLocalizations.of(context)!.hiringJobOfferSearchPlaceholder, style: Theme.of(context).textTheme.bodySmall)
              ),
            )
          ),
          const SizedBox(width: 15),
          ElevatedButton(
            onPressed: () {},
            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: MaterialStateProperty.all(Styles.accent),
            ),
            child: SvgPicture.asset('assets/icons/slider.svg')
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(88);
}
