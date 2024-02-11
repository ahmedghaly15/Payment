import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';

class TotalAmount extends StatelessWidget {
  const TotalAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Total',
          style: AppStyles.styleSemiBold24(context),
        ),
        Text(
          "\$50,97",
          style: AppStyles.styleSemiBold24(context),
        ),
      ],
    );
  }
}
