import 'package:flutter/material.dart';
import 'package:payment/core/utils/colors_manager.dart';
import 'package:payment/views/my_cart_layout_view.dart';

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Payment App',
      theme: ThemeData(
        primaryColor: ColorsManager.primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyCartLayoutView(),
    );
  }
}
