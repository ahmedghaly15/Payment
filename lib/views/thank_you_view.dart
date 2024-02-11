import 'package:flutter/material.dart';
import 'package:payment/core/widgets/responsive_layout.dart';
import 'package:payment/widgets/thank_you_mobile_layout.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: (context) => const ThankYouMobileLayout(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const SizedBox(),
      ),
    );
  }
}
