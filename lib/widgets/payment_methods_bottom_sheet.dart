import 'package:flutter/material.dart';
import 'package:payment/core/widgets/primary_button.dart';
import 'package:payment/widgets/payment_methods_sliver_list.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const PaymentMethodsListView(),
          const SizedBox(height: 16),
          PrimaryButton(
            buttonText: 'Continue',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
