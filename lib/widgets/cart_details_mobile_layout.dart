import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_sliver_app_bar.dart';
import 'package:payment/core/widgets/primary_button.dart';
import 'package:payment/views/thank_you_view.dart';
import 'package:payment/widgets/custom_credit_card.dart';
import 'package:payment/widgets/payment_methods_sliver_list.dart';

class CartDetailsMobileLayout extends StatefulWidget {
  const CartDetailsMobileLayout({super.key});

  @override
  State<CartDetailsMobileLayout> createState() =>
      _CartDetailsMobileLayoutState();
}

class _CartDetailsMobileLayoutState extends State<CartDetailsMobileLayout> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverAppBar(title: 'Payment Details'),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverToBoxAdapter(
            child: PaymentMethodsListView(),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 34)),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: _formKey,
            autoValidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 35,
                bottom: 12,
              ),
              child: PrimaryButton(
                buttonText: 'Pay',
                onPressed: () => _pay(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _pay() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    } else {
      // autovalidateMode = AutovalidateMode.always;
      // setState(() {});

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ThankYouView(),
        ),
      );
    }
  }
}
