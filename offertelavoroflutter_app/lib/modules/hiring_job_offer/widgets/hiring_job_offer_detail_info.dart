import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:offertelavoroflutter_app/helpers/styles.dart';
import 'package:offertelavoroflutter_app/helpers/app_url_launcher.dart';
import 'package:offertelavoroflutter_app/modules/common/models/select_option/select_option.dart';
import 'package:offertelavoroflutter_app/modules/common/models/styled_text/styled_text.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/multi_style_text.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer/hiring_job_offer.dart';

class HiringJobofferDetailInfo extends StatelessWidget {
  final HiringJobOffer hiringJobOffer;
  const HiringJobofferDetailInfo({Key? key, required this.hiringJobOffer}) : super(key: key);

  Widget _buildUrlInfo(String title, String? url, BuildContext context) {
    if(url == null) return const SizedBox();

    Widget info = GestureDetector(
      onTap: () => AppUrlLauncher.openUrlInBrowser(url),
      child: Text(url,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(decoration: TextDecoration.underline)
      )
    );

    return _buildInfo(title, info, context);
  }

  Widget _buildSelectOptionInfo(String title, SelectOption? selectOption, BuildContext context) {
    if(selectOption == null) return const SizedBox();

    Widget info = Text(selectOption.name, style: Theme.of(context).textTheme.bodyMedium);
    return _buildInfo(title, info, context);
  }

  Widget _buildStyledTextInfo(String title, List<StyledText>? styledText, BuildContext context) {
    if(styledText == null || styledText.isEmpty) return const SizedBox();

    Widget info = MultiStyleText(
      items: styledText,
      baseStyle: Theme.of(context).textTheme.bodyMedium
    );
    return _buildInfo(title, info, context);
  }

  Widget _buildInfo(String title, Widget info, BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 16),
        Text(title, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 10),
        info,
        const SizedBox(height: 16),
        buildSeparator(),
      ],
    );
  }

  Widget buildSeparator() {
    return Container(
      height: 1,
      color: Styles.lightBackground,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Styles.screenHorizPadding),
      child: Column(
        children: [
          _buildStyledTextInfo(AppLocalizations.of(context)!.qualificaAttribute, hiringJobOffer.qualifica, context),
          _buildSelectOptionInfo(AppLocalizations.of(context)!.teamAttribute, hiringJobOffer.team, context),
          _buildSelectOptionInfo(AppLocalizations.of(context)!.contrattoAttribute, hiringJobOffer.contratto, context),
          _buildSelectOptionInfo(AppLocalizations.of(context)!.seniorityAttribute, hiringJobOffer.seniority, context),
          _buildStyledTextInfo(AppLocalizations.of(context)!.retribuzioneAttribute, hiringJobOffer.retribuzione, context),
          _buildStyledTextInfo(AppLocalizations.of(context)!.descrizioneOffertaAttribute, hiringJobOffer.descrizioneOfferta, context),
          _buildUrlInfo(AppLocalizations.of(context)!.urlSitoWebAttribute, hiringJobOffer.urlSitoWeb, context),
          _buildStyledTextInfo(AppLocalizations.of(context)!.comeCandidarsiAttribute, hiringJobOffer.comeCandidarsi, context),
          // TODO is this useful? _buildStyledTextInfo(AppLocalizations.of(context)!.statoDiPubblicazioneAttribute, hiringJobOffer.statoDiPubblicazione, context),
        ],
      ),
    );
  }
}
