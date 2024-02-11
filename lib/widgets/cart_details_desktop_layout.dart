import 'package:flutter/material.dart';
import 'package:payment/core/widgets/primary_button.dart';
import 'package:payment/widgets/custom_credit_card.dart';
import 'package:payment/widgets/payment_methods_sliver_list.dart';

class CartDetailsDesktopLayout extends StatefulWidget {
  const CartDetailsDesktopLayout({super.key});

  @override
  State<CartDetailsDesktopLayout> createState() =>
      _CartDetailsDesktopLayoutState();
}

class _CartDetailsDesktopLayoutState extends State<CartDetailsDesktopLayout> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: PaymentMethodsListView(
              scrollDirection: Axis.vertical,
              hasHeight: false,
            ),
          ),
        ),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CustomCreditCard(
                  formKey: _formKey,
                  autoValidateMode: autovalidateMode,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 34),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
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
            ],
          ),
        ),
      ],
    );
  }

  void _pay() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
