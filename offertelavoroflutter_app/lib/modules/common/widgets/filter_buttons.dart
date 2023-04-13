import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:offertelavoroflutter_app/constants/styles.dart';

class FilterButtons<T> extends StatelessWidget {
  final List<FilterButtonsOption<T>> options;
  final List<T> selectedOptionsValues;
  final Function(T) onSelected;
  final int optionsPerRow;

  const FilterButtons({Key? key, required this.options, required this.selectedOptionsValues,
    required this.onSelected, this.optionsPerRow = 3 }) : super(key: key);

  bool isSelected(T optionValue) => selectedOptionsValues.any((selectedOptionsValue) => selectedOptionsValue == optionValue);

  @override
  Widget build(BuildContext context) {
    if(options.isEmpty) return const SizedBox();
    List<List<FilterButtonsOption<T>>> chunks = options.slices(optionsPerRow).toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: chunks.map(_buildRow).toList(),
    );
  }

  Widget _buildRow(List<FilterButtonsOption<T>> options) {
    double spaceBetweenItems = 5;

    List<Widget> widgets = options.map<Widget>((option) => Expanded(
      child: _FilterButton(
        onTap: () => onSelected(option.value),
        selected: isSelected(option.value),
        label: option.label,
      )
    )).toList();

    // We fill the row so that all the buttons have the same width even if the row has less items than optionsPerRow
    for(int i = 1 ; i < optionsPerRow ; i++) {
      if(widgets.length == i) {
        widgets.add(const Expanded(child: SizedBox()));
      }
    }

    // We add the spacing between each item
    for(int i = optionsPerRow - 1 ; i > 0 ; i--) {
      widgets.insert(i, SizedBox(width: spaceBetweenItems));
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(children: widgets),
    );
  }
}

class _FilterButton extends StatelessWidget {
  final String label;
  final bool selected;
  final Function() onTap;

  const _FilterButton({Key? key, required this.selected, required this.onTap,
    required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: selected ? null : Styles.getLightButtonTheme(context),
      child: Text(label),
    );
  }
}


class FilterButtonsOption<T> {
  T value;
  String label;

  FilterButtonsOption(this.value, this.label);
}
