import 'package:flutter/material.dart';
import 'package:payment/constants.dart';
import 'package:payment/widgets/thank_you_info_row.dart';

class ThankYouInfo extends StatelessWidget {
  const ThankYouInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        Constants.thankYouInfo.length,
        (index) => ThankYouInfoRow(
          thankYouInfo: Constants.thankYouInfo[index],
        ),
        growable: false,
      ),
    );
  }
}
