import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:offertelavoroflutter_app/constants/styles.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/content_sheet.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/filter_buttons.dart';

class HiringJobOfferFilterSheet extends StatelessWidget {
  const HiringJobOfferFilterSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.advancedSearch, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          Text(AppLocalizations.of(context)!.qualificaAttribute, style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 10),
          _buildQualificaFilters(context),
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

  Widget _buildQualificaFilters(BuildContext context) {
    return FilterButtons<String>(
      onSelected: (value) {},
      selectedOptionsValues: [
        'Filtro 1',
        'Filtro 4'
      ],
      options: [
        FilterButtonsOption('Filtro 1', 'Filtro 1'),
        FilterButtonsOption('Filtro 2', 'Filtro 2'),
        FilterButtonsOption('Filtro 3', 'Filtro 3')
      ],
    );
  }
}
