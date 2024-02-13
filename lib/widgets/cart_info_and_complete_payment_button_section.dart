import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/core/widgets/custom_divider.dart';
import 'package:payment/core/widgets/primary_button.dart';
import 'package:payment/cubit/payment_cubit.dart';
import 'package:payment/repos/checkout_repo_impl.dart';
import 'package:payment/widgets/payment_methods_bottom_sheet.dart';
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
            showModalBottomSheet(
              context: context,
              builder: (context) => BlocProvider(
                create: (context) => PaymentCubit(CheckoutRepoImpl()),
                child: const PaymentMethodsBottomSheet(),
              ),
            );
          },
        ),
      ],
    );
  }
}
