import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/core/widgets/primary_button.dart';
import 'package:payment/cubit/payment_cubit.dart';
import 'package:payment/models/payment_intent_request_body.dart';
import 'package:payment/views/thank_you_view.dart';

class CustomPrimaryButtonBlocConsumer extends StatelessWidget {
  const CustomPrimaryButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ThankYouView(),
            ),
          );
        }

        if (state is PaymentFailure) {
          SnackBar snackBar = SnackBar(content: Text(state.failure));

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return PrimaryButton(
          isLoading: state is PaymentLoading ? true : false,
          buttonText: 'Continue',
          onPressed: () {
            const PaymentIntentRequestBody paymentIntentRequestBody =
                PaymentIntentRequestBody(
              amount: '1000',
              currency: 'USD',
            );

            context.read<PaymentCubit>().pay(paymentIntentRequestBody);
          },
        );
      },
    );
  }
}
