import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_sliver_app_bar.dart';

class CartDetailsMobileLayout extends StatelessWidget {
  const CartDetailsMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverAppBar(title: 'Payment Details'),
        const SliverToBoxAdapter(
          child: SizedBox(height: 24),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
        ),
      ],
    );
  }
}
