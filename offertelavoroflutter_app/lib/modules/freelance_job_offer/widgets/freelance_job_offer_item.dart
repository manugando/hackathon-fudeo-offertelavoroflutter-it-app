import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:offertelavoroflutter_app/helpers/styles.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/content_card.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/select_option_badge.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/multi_style_text.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/separated_row.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/freelance_job_offer/freelance_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer/hiring_job_offer.dart';

class FreelanceJobOfferItem extends StatelessWidget {
  final FreelanceJobOffer freelanceJobOffer;
  final Function() onTap;
  final Function() onFavoriteTap;
  final bool isFavorite;
  const FreelanceJobOfferItem({Key? key, required this.freelanceJobOffer, required this.onTap,
    required this.onFavoriteTap, required this.isFavorite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: freelanceJobOffer.id,
      child: ContentCard(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildEmoji(),
                const SizedBox(width: 8),
                Expanded(child: _buildMainInfo(context)),
                const SizedBox(width: 8),
                _buildFavoriteIcon(context)
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(child: _buildJobPosted(context)),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildEmoji() {
    if(freelanceJobOffer.emoji == null || freelanceJobOffer.emoji!.isEmpty) return const SizedBox();

    return Container(
      width: 38,
      height: 38,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Styles.lightBackground
      ),
      child: Center(
        child: Text(freelanceJobOffer.emoji!, style: const TextStyle(fontSize: 18))
      ),
    );
  }

  Widget _buildMainInfo(BuildContext context) {
    return ConstrainedBox( // needed to center vertically the text when the località is not available
      constraints: const BoxConstraints(minHeight: 38),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(context),
          ],
        ),
      ),
    );
  }
  
  Widget _buildTitle(BuildContext context) {
    if(freelanceJobOffer.codice == null || freelanceJobOffer.codice!.isEmpty) return const SizedBox();

    return MultiStyleText(items: freelanceJobOffer.codice!, baseStyle: Theme.of(context).textTheme.titleSmall);
  }

  Widget _buildFavoriteIcon(BuildContext context) {
    return GestureDetector(
      onTap: onFavoriteTap,
      child: SvgPicture.asset(isFavorite ? 'assets/icons/bookmark-filled.svg' : 'assets/icons/bookmark.svg'),
    );
  }

  Widget _buildJobPosted(BuildContext context) {
    if(freelanceJobOffer.jobPosted == null) return const SizedBox();

    return Text(DateFormat.yMd().format(freelanceJobOffer.jobPosted!),
      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Styles.lightText)
    );
  }
}