import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offertelavoroflutter_app/helpers/styles.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/content_card.dart';

class SubscribeJobOfferNewsletterCta extends StatelessWidget {
  final Function() onTap;
  const SubscribeJobOfferNewsletterCta({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentCard(
      onTap: onTap,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      color: Styles.primaryDark.withAlpha(20),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/bell.svg'),
          const SizedBox(width: 15),
          Expanded(child: Text(AppLocalizations.of(context)!.subscribeToJobOfferNewsletter, style: Theme.of(context).textTheme.bodySmall)),
          SvgPicture.asset('assets/icons/chevron-right.svg'),
        ],
      ),
    );
  }
}
