import 'package:flutter/material.dart';
import 'package:payment/core/widgets/responsive_layout.dart';
import 'package:payment/widgets/thank_you_layout.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: (context) => Transform.translate(
          offset: const Offset(0, -16),
          child: const ThankYouLayout(),
        ),
        tabletLayout: (context) => const ThankYouLayout(),
        desktopLayout: (context) => const ThankYouLayout(),
      ),
    );
  }
}
