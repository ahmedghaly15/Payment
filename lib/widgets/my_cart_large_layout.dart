import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_sliver_app_bar.dart';
import 'package:payment/widgets/cart_image_section.dart';
import 'package:payment/widgets/cart_info_and_complete_payment_button_section.dart';

class MyCartLargeLayout extends StatelessWidget {
  const MyCartLargeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomSliverAppBar(title: 'My Cart'),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Row(
            children: <Widget>[
              Expanded(
                child: CartImageSection(),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: CartInfoAndCompletePaymentButtonSection(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
