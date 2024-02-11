import 'package:flutter/material.dart';
import 'package:payment/constants.dart';
import 'package:payment/widgets/thank_you_info_row.dart';

class ThankYouInfo extends StatelessWidget {
  const ThankYouInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        Constants.thankYouInfo.length,
        (index) => Padding(
          padding: EdgeInsets.only(bottom: _isNotLastIndex(index) ? 0 : 4),
          child: ThankYouInfoRow(
            thankYouInfo: Constants.thankYouInfo[index],
          ),
        ),
        growable: false,
      ),
    );
  }

  bool _isNotLastIndex(int index) => index != Constants.thankYouInfo.length - 1;
}
