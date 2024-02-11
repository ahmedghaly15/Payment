import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';
import 'package:payment/core/widgets/responsive_layout.dart';
import 'package:payment/widgets/my_cart_large_layout.dart';
import 'package:payment/widgets/my_cart_mobile_layout.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'My Cart',
          style: AppStyles.styleMedium25(context),
        ),
        centerTitle: true,
      ),
      body: ResponsiveLayout(
        mobileLayout: (context) => const MyCartMobileLayout(),
        tabletLayout: (context) => const MyCartLargeLayout(),
        desktopLayout: (context) => const MyCartLargeLayout(),
      ),
    );
  }
}
