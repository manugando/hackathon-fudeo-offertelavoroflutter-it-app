import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/content_sheet.dart';

class HiringJobOfferFilterSheet extends StatelessWidget {
  const HiringJobOfferFilterSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.advancedSearch, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 10),
          Text('CIAo'),
          Text('CIAo'),
          Text('CIAo'),
          Text('CIAo'),
          Text('CIAo'),
          Text('CIAo'),
          Text('CIAo'),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text(AppLocalizations.of(context)!.applyFilter)
          ),
          const SizedBox(height: 10),
        ],
      )
    );
  }
}
