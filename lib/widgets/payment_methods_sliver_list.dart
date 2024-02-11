import 'package:flutter/material.dart';
import 'package:payment/constants.dart';
import 'package:payment/widgets/payment_method.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({
    super.key,
    this.scrollDirection = Axis.horizontal,
    this.hasHeight = true,
  });

  final Axis scrollDirection;
  final bool hasHeight;

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.hasHeight ? Constants.paymentMethodHeight : null,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: Constants.paymentMethodsImages.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: widget.scrollDirection,
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
        separatorBuilder: (context, index) => SizedBox(
          width: widget.scrollDirection == Axis.horizontal ? 20 : 0,
          height: widget.scrollDirection == Axis.horizontal ? 0 : 20,
        ),
      ),
    );
  }
}
