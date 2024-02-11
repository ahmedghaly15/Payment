import 'package:flutter/material.dart';
import 'package:payment/constants.dart';
import 'package:payment/widgets/payment_method.dart';

class PaymentMethodsSliverList extends StatefulWidget {
  const PaymentMethodsSliverList({super.key});

  @override
  State<PaymentMethodsSliverList> createState() =>
      _PaymentMethodsSliverListState();
}

class _PaymentMethodsSliverListState extends State<PaymentMethodsSliverList> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: Constants.paymentMethodHeight,
        child: ListView.separated(
          padding: EdgeInsets.zero,
          itemCount: Constants.paymentMethodsImages.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              });
            },
            child: PaymentMethod(
              image: Constants.paymentMethodsImages[index],
              isActive: activeIndex == index,
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 20),
        ),
      ),
    );
  }
}
