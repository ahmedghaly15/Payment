import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/utils/app_assets.dart';
import 'package:payment/core/utils/app_styles.dart';

class CustomMasterCard extends StatelessWidget {
  const CustomMasterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(AppAssets.imagesMasterCard),
          const SizedBox(width: 23),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  'Credit Card',
                  style: AppStyles.styleRegular18(context),
                ),
                Text(
                  'Mastercard **78',
                  style: AppStyles.styleRegular14(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
