import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';
import 'package:payment/widgets/cart_image_section.dart';
import 'package:payment/widgets/cart_info_and_complete_payment_button_section.dart';

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
        const SliverFillRemaining(
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
