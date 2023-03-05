import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeaderRow extends ConsumerWidget {
  final List<String> entries;

  const HeaderRow({required this.entries, Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;

      return Row(
        children: entries.map((e) {
          return Container(
            width: (width - 40) / entries.length,
            alignment: Alignment.center,
            child: Text(
              e,
              style: TextStyle(
                color: Colors.blueGrey[300],
                fontSize: 16,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
          );
        }).toList(),
      );
    });
  }
}
