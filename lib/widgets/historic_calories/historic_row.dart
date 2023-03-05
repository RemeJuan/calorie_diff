import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'historic_macros.dart';

class HistoricRow extends ConsumerWidget {
  final DateTime date;
  final List<String> entries;

  const HistoricRow({
    required this.date,
    required this.entries,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context, ref) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;

      return Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          childrenPadding: EdgeInsets.zero,
          maintainState: true,
          initiallyExpanded: false,
          title: Row(
            children: entries.map((e) {
              return Container(
                width: (width - 40) / entries.length,
                alignment: Alignment.center,
                child: Text(
                  e,
                  style: TextStyle(
                    color: Colors.blueGrey[400],
                    fontSize: 14,
                    height: 1.25,
                  ),
                ),
              );
            }).toList(),
          ),
          children: [
            HistoricMacros(date: date),
          ],
        ),
      );
    });
  }
}
