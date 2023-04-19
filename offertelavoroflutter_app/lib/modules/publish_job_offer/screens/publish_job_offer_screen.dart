import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:offertelavoroflutter_app/modules/app_shell/widgets/base_app_bar.dart';

class PublishJobOfferScreen extends StatelessWidget {
  const PublishJobOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: Text(AppLocalizations.of(context)!.publishJobOfferScreenTitle)),
      body: Placeholder(),
    );
  }
}
