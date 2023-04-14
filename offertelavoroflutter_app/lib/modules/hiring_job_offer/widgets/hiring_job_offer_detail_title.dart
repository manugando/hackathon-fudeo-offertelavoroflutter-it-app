import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:offertelavoroflutter_app/constants/styles.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/multi_style_text.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer.dart';

class HiringJobOfferDetailTitle extends StatelessWidget {
  final HiringJobOffer hiringJobOffer;
  const HiringJobOfferDetailTitle({Key? key, required this.hiringJobOffer}) : super(key: key);

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
    if(hiringJobOffer.emoji == null || hiringJobOffer.emoji!.isEmpty) return null;

    return Container(
      width: 80,
      height: 80,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Styles.lightBackground
      ),
      child: Center(
          child: Text(hiringJobOffer.emoji!, style: const TextStyle(fontSize: 32))
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    if(hiringJobOffer.name == null || hiringJobOffer.name!.isEmpty) return const SizedBox();

    return MultiStyleText(
      items: hiringJobOffer.name!,
      baseStyle: Theme.of(context).textTheme.titleLarge,
      textAlign: TextAlign.center
    );
  }

  Widget _buildMainInfoRow(BuildContext context) {
    List<Widget> widgets = [];

    Widget? nomeAzienda = _buildNomeAzienda(context);
    if(nomeAzienda != null) {
      widgets.add(Expanded(child: nomeAzienda));
    }

    Widget? localita = _buildLocalita(context);
    if(localita != null) {
      widgets.add(Expanded(child: localita));
    }

    Widget? jobPosted = _buildJobPosted(context);
    if(jobPosted != null) {
      widgets.add(Expanded(child: jobPosted));
    }

    if(widgets.length > 2) {
      widgets.insert(2, buildDot());
    }

    if(widgets.length > 1) {
      widgets.insert(1, buildDot());
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: widgets,
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

  Widget? _buildNomeAzienda(BuildContext context) {
    if(hiringJobOffer.nomeAzienda == null || hiringJobOffer.nomeAzienda!.isEmpty) return null;

    return MultiStyleText(
      items: hiringJobOffer.nomeAzienda!,
      baseStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Styles.primaryDark),
      textAlign: TextAlign.center,
    );
  }

  Widget? _buildLocalita(BuildContext context) {
    if(hiringJobOffer.localita == null || hiringJobOffer.localita!.isEmpty) return null;

    return MultiStyleText(
      items: hiringJobOffer.localita!,
      baseStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Styles.primaryDark),
      textAlign: TextAlign.center,
    );
  }

  Widget? _buildJobPosted(BuildContext context) {
    if(hiringJobOffer.jobPosted == null) return null;

    return Text(DateFormat.yMd().format(hiringJobOffer.jobPosted!),
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Styles.primaryDark),
      textAlign: TextAlign.center,
    );
  }
}