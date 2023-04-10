import 'package:calorie_diff/core/core_providers.dart';
import 'package:calorie_diff/intro_screen/widgets/intro_icon.dart';
import 'package:calorie_diff/providers/health_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends ConsumerWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    return IntroductionScreen(
      pages: _pages(),
      onDone: () async {
        await ref.read(healthRequestAccessProvider.future);
        ref.read(setIntroSeenProvider);
      },
      showBackButton: false,
      showSkipButton: false,
      showNextButton: false,
      done: const Text("Grant", style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }

  List<PageViewModel> _pages() {
    return [
      PageViewModel(
        title: "Required Permissions",
        bodyWidget: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                child: const IntrinsicWidth(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "In order to be able to calculate your calorie differences and display you macros, Calorie Diff requires access to the following Health permission:.",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16),
                      Text("Active, Resting and Dietary Energy"),
                      Text("Dietary Carbs, Fats and Protein"),
                      SizedBox(height: 16),
                      Text(
                        "Calorie Diff does not collect any other data.",
                        textAlign: TextAlign.center,
                      ),
                      Text("Tap 'Grant' to continue."),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        image: const IntroIcon(),
      )
    ];
  }
}
