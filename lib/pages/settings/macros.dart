import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:calorie_diff/shared/widgets/numeric_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../generated/l10n.dart';

class SettingsMacros extends HookConsumerWidget {
  const SettingsMacros({super.key});

  @override
  Widget build(context, ref) {
    final settings = ref.watch(settingsProvider);
    final macros = settings.macros;

    final isEnabled = useState(settings.macrosEnabled);
    final carbs = useState(macros.carb.toInt().toString());
    final fats = useState(macros.fat.toInt().toString());
    final protein = useState(macros.protein.toInt().toString());

    final canSubmit = useState(false);

    useEffect(() {
      final c = int.parse(carbs.value);
      final f = int.parse(fats.value);
      final p = int.parse(protein.value);
      final e = isEnabled.value;

      canSubmit.value = !e || c > 0 && f > 0 && p > 0;

      return null;
    }, [carbs, fats, protein, isEnabled]);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.of(context).settings_enable_macros),
            Switch(
              value: isEnabled.value,
              activeThumbColor: Colors.lightBlue,
              onChanged: (value) {
                isEnabled.value = value;
              },
            ),
          ],
        ),
        const SizedBox(height: 16),
        Visibility(
          visible: isEnabled.value,
          child: Column(
            key: const ValueKey("macros"),
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: NumericInputField(
                      initialValue: macros.carb.toInt().toString(),
                      label: S.of(context).carbs,
                      suffixText: "g",
                      callback: (String value) {
                        carbs.value = value;
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: NumericInputField(
                      initialValue: macros.fat.toInt().toString(),
                      label: S.of(context).fats,
                      suffixText: "g",
                      callback: (String value) {
                        fats.value = value;
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: NumericInputField(
                      initialValue: macros.protein.toInt().toString(),
                      label: S.of(context).protein,
                      suffixText: "g",
                      callback: (String value) {
                        protein.value = value;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Expanded(child: SizedBox.shrink()),
        const SizedBox(height: 16),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: canSubmit.value ? Colors.lightBlue : Colors.grey,
            minimumSize: const Size.fromHeight(40),
          ),
          onPressed: () {
            if (!canSubmit.value) return;

            final updates = settings.copyWith(
              macrosEnabled: isEnabled.value,
              macros: settings.macros.copyWith(
                carb: double.parse(carbs.value),
                fat: double.parse(fats.value),
                protein: double.parse(protein.value),
              ),
            );
            FocusScope.of(context).unfocus();
            return ref.refresh(updateSettingsProvider(updates));
          },
          child: Text(
            S.of(context).settings_save,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
