import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utils/api_keys.dart';
import 'package:payment/payment_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey = ApiKeys.publishableKey;

  runApp(const PaymentApp());
}
