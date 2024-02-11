import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';
import 'package:payment/core/widgets/custom_divider.dart';
import 'package:payment/widgets/barcode_and_paid.dart';
import 'package:payment/widgets/custom_master_card.dart';
import 'package:payment/widgets/thank_you_info.dart';
import 'package:payment/widgets/total_amount.dart';

class ThankYouCardContent extends StatelessWidget {
  const ThankYouCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50 + 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Thank You!',
            style: AppStyles.styleMedium25(context),
          ),
          const SizedBox(height: 2),
          Text(
            'Your transaction was successful',
            style: AppStyles.styleRegular20(context),
          ),
          const SizedBox(height: 42),
          const ThankYouInfo(),
          const CustomDivider(),
          const TotalAmount(),
          const SizedBox(height: 30),
          const CustomMasterCard(),
          const Spacer(),
          const BarcodeAndPaid(),
        ],
      ),
    );
  }
}
