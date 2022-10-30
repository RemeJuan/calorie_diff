import 'package:calorie_diff/shared/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  final Icon icon;
  final String label;
  final num data;

  const DataCard({
    required this.icon,
    required this.label,
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8, left: 8),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(27, 39, 56, 1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomIconButton(child: icon),
          Padding(
            padding: const EdgeInsets.only(
              left: 19,
              top: 18,
              right: 19,
            ),
            child: Text(
              label,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.blueGrey[400],
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 19,
              top: 13,
              right: 17,
              bottom: 23,
            ),
            child: Text(
              data.toString(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
