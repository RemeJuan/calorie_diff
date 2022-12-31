import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsMacros extends ConsumerWidget {
  const SettingsMacros({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final settings = ref.watch(settingsProvider);
    final macros = settings.macros;
    final carbController = TextEditingController(text: macros.carb.toString());
    final fatController = TextEditingController(text: macros.fat.toString());
    final proteinController = TextEditingController(
      text: macros.protein.toString(),
    );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Enable Macros"),
            Switch(
              value: settings.macrosEnabled,
              activeColor: Colors.lightBlue,
              onChanged: (value) {
                final updates = settings.copyWith(macrosEnabled: value);
                return ref.refresh(updateSettingsProvider(updates));
              },
            ),
          ],
        ),
        const SizedBox(height: 16),
        Visibility(
          visible: settings.macrosEnabled,
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: carbController,
                      onTap: carbController.selectAll,
                      decoration: const InputDecoration(
                        labelText: "Carb",
                        contentPadding: EdgeInsets.all(8),
                        suffixText: "g",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      controller: fatController,
                      onTap: fatController.selectAll,
                      decoration: const InputDecoration(
                        labelText: "Fat",
                        contentPadding: EdgeInsets.all(8),
                        suffixText: "g",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      controller: proteinController,
                      onTap: proteinController.selectAll,
                      decoration: const InputDecoration(
                        labelText: "Protein",
                        contentPadding: EdgeInsets.all(8),
                        suffixText: "g",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  minimumSize: const Size.fromHeight(40),
                ),
                onPressed: () {
                  final carb = carbController.text;
                  final fat = fatController.text;
                  final protein = proteinController.text;
                  final updates = settings.copyWith(
                    macros: settings.macros.copyWith(
                      carb: double.parse(carb),
                      fat: double.parse(fat),
                      protein: double.parse(protein),
                    ),
                  );
                  FocusScope.of(context).unfocus();
                  return ref.refresh(updateSettingsProvider(updates));
                },
                child: const Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
