import 'package:flutter/material.dart';
import 'package:payment/constants.dart';
import 'package:payment/widgets/product_info_row_item.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        Constants.productInfoList.length,
        (index) => ProductRowInfoItem(
          productInfo: Constants.productInfoList[index],
        ),
        growable: false,
      ),
    );
  }
}
