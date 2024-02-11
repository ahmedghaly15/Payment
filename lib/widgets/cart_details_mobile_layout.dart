import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_sliver_app_bar.dart';
import 'package:payment/widgets/payment_methods_sliver_list.dart';

class CartDetailsMobileLayout extends StatelessWidget {
  const CartDetailsMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomSliverAppBar(title: 'Payment Details'),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          sliver: PaymentMethodsSliverList(),
        ),
      ],
    );
  }
}
