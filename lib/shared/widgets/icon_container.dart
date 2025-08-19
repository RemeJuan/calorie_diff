import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Widget child;

  const IconContainer({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 19,
          top: 21,
          right: 19,
        ),
        child: Container(
          constraints: const BoxConstraints(
            minHeight: 48,
            minWidth: 48,
          ),
          padding: const EdgeInsets.all(0),
          child: Container(
            alignment: Alignment.center,
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.blueGrey[400],
              borderRadius: BorderRadius.circular(24),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
