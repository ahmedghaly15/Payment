import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';
import 'package:payment/models/product_info_model.dart';

class ProductRowInfoItem extends StatelessWidget {
  const ProductRowInfoItem({
    super.key,
    required this.productInfo,
  });

  final ProductInfoModel productInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          productInfo.title,
          style: AppStyles.styleRegular18(context),
        ),
        Text(
          '\$${productInfo.amount}',
          style: AppStyles.styleRegular18(context),
        ),
      ],
    );
  }
}
