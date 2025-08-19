import 'package:flutter/material.dart';

class IntroIcon extends StatelessWidget {
  const IntroIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(0),
        child: Container(
          alignment: Alignment.center,
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            color: Colors.blueGrey[400],
            borderRadius: BorderRadius.circular(96),
          ),
          child: const Icon(
            Icons.directions_run,
            size: 64,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
