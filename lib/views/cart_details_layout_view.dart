import 'package:flutter/material.dart';
import 'package:payment/core/widgets/responsive_layout.dart';
import 'package:payment/widgets/cart_details_mobile_layout.dart';

class CartDetailsLayoutView extends StatelessWidget {
  const CartDetailsLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: (context) => const CartDetailsMobileLayout(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const SizedBox(),
      ),
    );
  }
}
