import 'package:calorie_diff/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NumericInputField extends HookWidget {
  final String initialValue;
  final String label;
  final String? suffixText;
  final Function(String value) callback;

  const NumericInputField({
    required this.initialValue,
    required this.label,
    required this.callback,
    this.suffixText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(
      text: initialValue,
    );

    useEffect(() {
      controller.addListener(() {
        callback(controller.text);
      });

      return null;
    }, [controller]);

    return TextFormField(
      controller: controller,
      onTap: controller.selectAll,
      decoration: InputDecoration(
        labelText: label,
        contentPadding: const EdgeInsets.all(8),
        suffixText: suffixText,
      ),
      keyboardType: TextInputType.number,
    );
  }
}
