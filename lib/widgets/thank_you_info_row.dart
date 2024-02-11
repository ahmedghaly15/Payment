import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';
import 'package:payment/models/thank_you_info_model.dart';

class ThankYouInfoRow extends StatelessWidget {
  const ThankYouInfoRow({
    super.key,
    required this.thankYouInfo,
  });

  final ThankYouInfoModel thankYouInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          thankYouInfo.title,
          style: AppStyles.styleRegular18(context),
        ),
        Text(
          thankYouInfo.info,
          style: AppStyles.styleSemiBold18(context),
        ),
      ],
    );
  }
}
