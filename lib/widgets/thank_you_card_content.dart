import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';
import 'package:payment/widgets/thank_you_info.dart';

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
        ],
      ),
    );
  }
}
