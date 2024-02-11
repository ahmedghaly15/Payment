import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_sliver_app_bar.dart';
import 'package:payment/widgets/cart_image_section.dart';
import 'package:payment/widgets/cart_info_and_complete_payment_button_section.dart';

class MyCartMobileLayout extends StatelessWidget {
  const MyCartMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomSliverAppBar(title: 'My Cart'),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: <Widget>[
              Expanded(child: CartImageSection()),
              Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  left: 20,
                  right: 20,
                  bottom: 12,
                ),
                child: CartInfoAndCompletePaymentButtonSection(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
