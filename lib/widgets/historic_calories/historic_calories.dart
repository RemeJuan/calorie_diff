import 'package:calorie_diff/health/health_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'header_row.dart';
import 'historic_row.dart';

class HistoricCalories extends ConsumerWidget {
  const HistoricCalories({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final historicCalories = ref.watch(historicHealthDataProvider);

    return historicCalories.when(
      data: (data) {
        return Container(
          margin: const EdgeInsets.only(right: 8, left: 8, top: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(27, 39, 56, 1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            children: [
              Text(
                "Past 7 Days",
                style: TextStyle(
                  color: Colors.blueGrey[300],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
              Divider(
                color: Colors.blueGrey[600],
                thickness: 1,
                height: 16,
              ),
              const HeaderRow(entries: [
                'Date',
                'In',
                'Out',
                'Diff',
              ]),
              Divider(
                color: Colors.blueGrey[600],
                thickness: 1,
                height: 16,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = data[index];
                  final date = DateFormat("dd MMM yy").format(item.date);
                  final entry = [
                    date,
                    item.consumed.toString(),
                    item.burned.toString(),
                    item.difference.toString(),
                  ];

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: HistoricRow(entries: entry),
                  );
                },
              ),
            ],
          ),
        );
      },
      loading: () => const SizedBox.shrink(key: Key("loading")),
      error: (error, stack) => Text('Error: $error'),
    );
  }
}
