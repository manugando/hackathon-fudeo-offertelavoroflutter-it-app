import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:offertelavoroflutter_app/helpers/styles.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/multi_style_text.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/separated_row.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/freelance_job_offer/freelance_job_offer.dart';

class FreelanceJobOfferDetailTitle extends StatelessWidget {
  final FreelanceJobOffer freelanceJobOffer;
  const FreelanceJobOfferDetailTitle({Key? key, required this.freelanceJobOffer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? emoji = _buildEmoji(context);
    return Stack(
      children: [
        Positioned(
          top: emoji != null ? 40 : 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(color: Styles.lightBackground)
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Styles.screenHorizPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              emoji ?? const SizedBox(height: 20),
              _buildTitle(context),
              const SizedBox(height: 16),
              _buildMainInfoRow(context),
              const SizedBox(height: 20),
            ],
          ),
        )
      ],
    );
  }

  Widget? _buildEmoji(BuildContext context) {
    if(freelanceJobOffer.emoji == null || freelanceJobOffer.emoji!.isEmpty) return null;

    return Container(
      width: 80,
      height: 80,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Styles.lightBackground
      ),
      child: Center(
        child: Text(freelanceJobOffer.emoji!, style: const TextStyle(fontSize: 32))
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    if(freelanceJobOffer.codice == null || freelanceJobOffer.codice!.isEmpty) return const SizedBox();

    return MultiStyleText(
      items: freelanceJobOffer.codice!,
      baseStyle: Theme.of(context).textTheme.titleLarge,
      textAlign: TextAlign.center
    );
  }

  Widget _buildMainInfoRow(BuildContext context) {
    Widget? jobPosted = _buildJobPosted(context);

    return SeparatedRow(
      crossAxisAlignment: CrossAxisAlignment.center,
      separatorBuilder: (context) => buildDot(),
      children: [
        if(jobPosted != null) Expanded(child: jobPosted)
      ],
    );
  }

  Widget buildDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 6,
      height: 6,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Styles.primaryDark
      )
    );
  }

  Widget? _buildJobPosted(BuildContext context) {
    if(freelanceJobOffer.jobPosted == null) return null;

    return Text(DateFormat.yMd().format(freelanceJobOffer.jobPosted!),
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Styles.primaryDark),
      textAlign: TextAlign.center,
    );
  }
}