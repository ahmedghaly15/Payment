import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment/core/utils/api_keys.dart';
import 'package:payment/core/widgets/primary_button.dart';
import 'package:payment/cubit/payment_cubit.dart';
import 'package:payment/models/amount_model/amount_model.dart';
import 'package:payment/models/amount_model/details.dart';
import 'package:payment/models/item_list_model/item.dart';
import 'package:payment/models/item_list_model/item_list_model.dart';
// import 'package:payment/models/payment_intent_request_body.dart';
import 'package:payment/views/thank_you_view.dart';

class CustomPrimaryButtonBlocConsumer extends StatelessWidget {
  const CustomPrimaryButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pop(context);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ThankYouView(),
            ),
          );
        }

        if (state is PaymentFailure) {
          Navigator.pop(context);

          SnackBar snackBar = SnackBar(content: Text(state.failure.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return PrimaryButton(
          isLoading: state is PaymentLoading ? true : false,
          buttonText: 'Continue',
          onPressed: () {
            // const PaymentIntentRequestBody paymentIntentRequestBody =
            //     PaymentIntentRequestBody(
            //   amount: '1000',
            //   currency: 'USD',
            //   customerId: 'cus_PaGfO7aAybUyWS',
            // );

            // context.read<PaymentCubit>().pay(paymentIntentRequestBody);

            var transactionData = _getTransactionData();

            _executePaypalPayment(context, transactionData);
          },
        );
      },
    );
  }

  void _executePaypalPayment(
    BuildContext context,
    ({AmountModel amount, ItemListModel itemList}) transactionData,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: ApiKeys.paypalClientId,
          secretKey: ApiKeys.paypalSecretKey,
          transactions: [
            {
              "amount": transactionData.amount.toJson(),
              "description": "The payment transaction description.",
              "item_list": transactionData.itemList.toJson(),
            }
          ],
          note: "Contact us for any questions on your order.",
          onSuccess: (Map params) async {
            log("onSuccess: $params");
            Navigator.pop(context);
          },
          onError: (error) {
            log("onError: $error");
            Navigator.pop(context);
          },
          onCancel: () {
            debugPrint('cancelled:');
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  ({AmountModel amount, ItemListModel itemList}) _getTransactionData() {
    final AmountModel amount = AmountModel(
      total: "100",
      currency: "USD",
      details: Details(
        subtotal: "100",
        shipping: "0",
        shippingDiscount: 0,
      ),
    );

    final List<Item> orders = [
      Item(
        name: "Apple",
        quantity: 4,
        price: "10",
        currency: "USD",
      ),
      Item(
        name: "Pineapple",
        quantity: 5,
        price: "12",
        currency: "USD",
      ),
    ];

    final itemList = ItemListModel(items: orders);

    return (amount: amount, itemList: itemList);
  }
}
