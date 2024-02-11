import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';
import 'package:payment/core/utils/size_config.dart';
import 'package:payment/core/widgets/responsive_layout.dart';
import 'package:payment/widgets/my_cart_desktop_layout.dart';
import 'package:payment/widgets/my_cart_mobile_layout.dart';
import 'package:payment/widgets/my_cart_tablet_layout.dart';

class MyCartLayoutView extends StatelessWidget {
  const MyCartLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width >= SizeConfig.desktop
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(
                'My Cart',
                style: AppStyles.styleMedium25(context),
              ),
              centerTitle: true,
            )
          : null,
      body: ResponsiveLayout(
        mobileLayout: (context) => const MyCartMobileLayout(),
        tabletLayout: (context) => const MyCartTabletLayout(),
        desktopLayout: (context) => const MyCartDesktopLayout(),
      ),
    );
  }
}
