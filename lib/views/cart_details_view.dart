import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';
import 'package:payment/core/utils/size_config.dart';
import 'package:payment/core/widgets/responsive_layout.dart';
import 'package:payment/widgets/cart_details_desktop_layout.dart';
import 'package:payment/widgets/cart_details_mobile_layout.dart';

class CartDetailsView extends StatelessWidget {
  const CartDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width >= SizeConfig.desktop
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(
                'Payment Details',
                style: AppStyles.styleMedium25(context),
              ),
              centerTitle: true,
            )
          : null,
      body: ResponsiveLayout(
        mobileLayout: (context) => const CartDetailsMobileLayout(),
        tabletLayout: (context) => const CartDetailsMobileLayout(),
        desktopLayout: (context) => const CartDetailsDesktopLayout(),
      ),
    );
  }
}
