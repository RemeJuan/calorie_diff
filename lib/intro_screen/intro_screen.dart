import 'package:calorie_diff/core/core_providers.dart';
import 'package:calorie_diff/intro_screen/widgets/intro_icon.dart';
import 'package:calorie_diff/providers/health_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../generated/l10n.dart';

class IntroScreen extends ConsumerWidget {
  const IntroScreen({super.key});

  @override
  Widget build(context, ref) {
    return IntroductionScreen(
      pages: _pages(context),
      onDone: () async {
        await ref.read(healthRequestAccessProvider.future);
        ref.read(setIntroSeenProvider);
      },
      showBackButton: false,
      showSkipButton: false,
      showNextButton: false,
      done: Text(
        S.of(context).permissions_grant,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }

  List<PageViewModel> _pages(BuildContext context) {
    return [
      PageViewModel(
        title: S.of(context).permissions_heading,
        bodyWidget: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                child: IntrinsicWidth(
                  child: Text(
                    S.of(context).permissions_text,
                    textAlign: TextAlign.center,
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
