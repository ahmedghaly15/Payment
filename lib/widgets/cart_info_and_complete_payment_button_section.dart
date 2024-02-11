import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_divider.dart';
import 'package:payment/core/widgets/primary_button.dart';
import 'package:payment/views/cart_details_view.dart';
import 'package:payment/widgets/product_info.dart';
import 'package:payment/widgets/total_amount.dart';

class CartInfoAndCompletePaymentButtonSection extends StatelessWidget {
  const CartInfoAndCompletePaymentButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const ProductInfo(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomDivider(),
        ),
        const TotalAmount(),
        const SizedBox(height: 16),
        PrimaryButton(
          buttonText: 'Complete Payment',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CartDetailsView(),
              ),
            );
          },
        ),
      ],
    );
  }
}
