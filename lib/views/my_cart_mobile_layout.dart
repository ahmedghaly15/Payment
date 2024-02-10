import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';

class MyCartMobileLayout extends StatelessWidget {
  const MyCartMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'My Cart',
            style: AppStyles.styleMedium25(context),
          ),
          centerTitle: true,
        ),
      ],
    );
  }
}
