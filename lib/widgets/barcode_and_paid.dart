import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment/core/utils/app_styles.dart';
import 'package:payment/core/utils/colors_manager.dart';

class BarcodeAndPaid extends StatelessWidget {
  const BarcodeAndPaid({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Icon(
          FontAwesomeIcons.barcode,
          size: 64,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: ColorsManager.primaryColor,
              width: 2,
            ),
          ),
          child: Text(
            'PAID',
            style: AppStyles.styleSemiBold24(context).copyWith(
              color: ColorsManager.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
