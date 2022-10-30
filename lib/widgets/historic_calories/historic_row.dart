import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HistoricRow extends ConsumerWidget {
  final List<String> entries;

  const HistoricRow({required this.entries, Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;

      return Row(
        children: entries.map((e) {
          return Container(
            width: width / entries.length,
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
      );
    });
  }
}
