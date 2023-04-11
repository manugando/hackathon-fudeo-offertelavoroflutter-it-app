import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:offertelavoroflutter_app/constants/styles.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/select_option_badge.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/multi_style_text.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer.dart';

class HiringJobOfferItem extends StatelessWidget {
  final HiringJobOffer hiringJobOffer;
  const HiringJobOfferItem({Key? key, required this.hiringJobOffer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(bottom: 20.0),
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
              _buildBookmarkIcon(context)
            ],
          ),
          const SizedBox(height: 20),
          _buildBadges(context),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(child: _buildJobPosted(context)),
              Expanded(child: _buildRetribuzione(context)),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildEmoji() {
    if(hiringJobOffer.emoji == null || hiringJobOffer.emoji!.isEmpty) return const SizedBox();

    return Container(
      width: 38,
      height: 38,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Styles.lightBackground
      ),
      child: Center(
        child: Text(hiringJobOffer.emoji!, style: const TextStyle(fontSize: 18))
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
            const SizedBox(height: 4),
            _buildLocalita(context)
          ],
        ),
      ),
    );
  }
  
  Widget _buildTitle(BuildContext context) {
    if(hiringJobOffer.name == null || hiringJobOffer.name!.isEmpty) return const SizedBox();

    return MultiStyleText(items: hiringJobOffer.name!, baseStyle: Theme.of(context).textTheme.titleSmall);
  }

  Widget _buildLocalita(BuildContext context) {
    if(hiringJobOffer.localita == null || hiringJobOffer.localita!.isEmpty) return const SizedBox();

    return MultiStyleText(items: hiringJobOffer.localita!, baseStyle: Theme.of(context).textTheme.bodyMedium);
  }

  Widget _buildBookmarkIcon(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO save for later
      },
      child: SvgPicture.asset('assets/icons/bookmark.svg'),
    );
  }

  Widget _buildBadges(BuildContext context) {
    double spaceBetweenItems = 5;

    List<Widget> badges = [];
    if(hiringJobOffer.team != null) {
      badges.add(Expanded(child: SelectOptionBadge(selectOption: hiringJobOffer.team!)));
    }

    if(hiringJobOffer.seniority != null) {
      badges.add(Expanded(child: SelectOptionBadge(selectOption: hiringJobOffer.seniority!)));
    }

    if(hiringJobOffer.contratto != null) {
      badges.add(Expanded(child: SelectOptionBadge(selectOption: hiringJobOffer.contratto!)));
    }

    if(badges.length > 2) {
      badges.insert(2, SizedBox(width: spaceBetweenItems));
    }

    if(badges.length > 1) {
      badges.insert(1, SizedBox(width: spaceBetweenItems));
    }

    return Row(
      children: badges,
    );
  }

  Widget _buildJobPosted(BuildContext context) {
    if(hiringJobOffer.jobPosted == null) return const SizedBox();

    return Text(DateFormat.yMd().format(hiringJobOffer.jobPosted!), style: Theme.of(context).textTheme.bodySmall);
  }

  Widget _buildRetribuzione(BuildContext context) {
    if(hiringJobOffer.retribuzione == null) return const SizedBox();

    return MultiStyleText(
      items: hiringJobOffer.retribuzione!,
      baseStyle: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.end,
    );
  }
}
