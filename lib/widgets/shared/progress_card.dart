import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class ProgressCard extends StatelessWidget {
  final String label;
  final num data;
  final num target;
  final Color color;

  const ProgressCard({
    required this.label,
    required this.data,
    required this.target,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final widgetSize = (screenWidth - 80) / 3;
    final remaining = target - data;
    final prefix = remaining > 0
        ? S.of(context).macro_prefix_left
        : S.of(context).macro_prefix_over;

    return Container(
      margin: const EdgeInsets.only(right: 8, left: 8),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(27, 39, 56, 1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Text(
            label,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.blueGrey[400],
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: widgetSize,
                width: widgetSize,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(
                    value: data / target,
                    backgroundColor: Colors.blueGrey[400],
                    valueColor: AlwaysStoppedAnimation<Color>(color),
                    strokeWidth: 8,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    "${data.toInt()}",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    " / ${target.toInt()}g",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "$prefix: ${remaining.toInt()}g".replaceAll("-", ""),
            style: TextStyle(
              color: Colors.blueGrey[400],
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
