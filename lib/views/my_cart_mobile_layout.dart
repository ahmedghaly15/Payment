import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_assets.dart';
import 'package:payment/core/utils/app_styles.dart';
import 'package:payment/core/widgets/custom_divider.dart';
import 'package:payment/core/widgets/primary_button.dart';
import 'package:payment/widgets/product_info.dart';

class MyCartMobileLayout extends StatelessWidget {
  const MyCartMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'My Cart',
            style: AppStyles.styleMedium25(context),
          ),
          centerTitle: true,
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: <Widget>[
              Image.asset(
                AppAssets.imagesBasketImage,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  children: <Widget>[
                    const ProductInfo(),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: CustomDivider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Total',
                          style: AppStyles.styleSemiBold24(context),
                        ),
                        Text(
                          "\$50,97",
                          style: AppStyles.styleSemiBold24(context),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    PrimaryButton(
                      buttonText: 'Complete Payment',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
