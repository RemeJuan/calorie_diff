import 'package:calorie_diff/core/extensions.dart';
import 'package:calorie_diff/providers/settings_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsMacros extends HookConsumerWidget {
  const SettingsMacros({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final settings = ref.watch(settingsProvider);
    final macros = settings.macros;

    final carbController = useTextEditingController(
      text: macros.carb.toString(),
    );
    final fatController = useTextEditingController(
      text: macros.fat.toString(),
    );
    final proteinController = useTextEditingController(
      text: macros.protein.toString(),
    );

    final isEnabled = useState(settings.macrosEnabled);

    final canSubmit = useState(false);

    useEffect(() {
      var c = double.parse(carbController.text);
      var f = double.parse(fatController.text);
      var p = double.parse(proteinController.text);

      carbController.addListener(() {
        c = double.parse(carbController.text);
        canSubmit.value = c > 0 && f > 0 && p > 0;
      });
      fatController.addListener(() {
        f = double.parse(fatController.text);
        canSubmit.value = c > 0 && f > 0 && p > 0;
      });
      proteinController.addListener(() {
        p = double.parse(proteinController.text);
        canSubmit.value = c > 0 && f > 0 && p > 0;
      });
      
      return null;
    });

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Enable Macros"),
            Switch(
              value: isEnabled.value,
              activeColor: Colors.lightBlue,
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

            final carb = carbController.text;
            final fat = fatController.text;
            final protein = proteinController.text;

            final updates = settings.copyWith(
              macrosEnabled: isEnabled.value,
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
    );
  }
}
