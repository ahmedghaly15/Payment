import 'package:flutter/material.dart';
import 'package:payment/core/widgets/responsive_layout.dart';
import 'package:payment/widgets/my_cart_mobile_layout.dart';
import 'package:payment/widgets/my_cart_tablet_layout.dart';

class MyCartLayoutView extends StatelessWidget {
  const MyCartLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: (context) => const MyCartMobileLayout(),
        tabletLayout: (context) => const MyCartTabletLayout(),
        desktopLayout: (context) => const SizedBox(),
      ),
    );
  }
}
