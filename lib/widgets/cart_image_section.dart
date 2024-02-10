import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_assets.dart';

class CartImageSection extends StatelessWidget {
  const CartImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.imagesBasketImage,
    );
  }
}
