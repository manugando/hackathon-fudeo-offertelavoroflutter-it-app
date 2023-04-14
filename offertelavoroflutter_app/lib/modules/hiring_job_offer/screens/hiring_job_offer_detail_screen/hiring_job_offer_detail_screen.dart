import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offertelavoroflutter_app/helpers/app_share.dart';
import 'package:offertelavoroflutter_app/modules/app_shell/widgets/detail_app_bar.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_detail_info.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_detail_title.dart';

class HiringJobOfferDetailScreen extends StatelessWidget {
  final HiringJobOffer hiringJobOffer;
  const HiringJobOfferDetailScreen({Key? key, required this.hiringJobOffer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: hiringJobOffer.id,
      child: Scaffold(
        appBar: DetailAppBar(
          actions: _buildActions(context),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HiringJobOfferDetailTitle(hiringJobOffer: hiringJobOffer),
                HiringJobofferDetailInfo(hiringJobOffer: hiringJobOffer),
                const SizedBox(height: 20),
              ],
            )
          ),
        ),
      ),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          // TODO
        },
        icon: SvgPicture.asset('assets/icons/bookmark.svg')
      ),
      IconButton(
        onPressed: () => AppShare.share(AppLocalizations.of(context)!.jobOfferShareText(hiringJobOffer.url)),
        icon: SvgPicture.asset('assets/icons/share.svg')
      ),
    ];
  }
}

