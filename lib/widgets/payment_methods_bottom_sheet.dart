import 'package:flutter/material.dart';
import 'package:payment/widgets/custom_primary_button_bloc_consumer.dart';
import 'package:payment/widgets/payment_methods_sliver_list.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          PaymentMethodsListView(),
          SizedBox(height: 16),
          CustomPrimaryButtonBlocConsumer(),
        ],
      ),
    );
  }
}
