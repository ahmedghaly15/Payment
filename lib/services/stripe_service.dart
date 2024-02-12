import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utils/api_keys.dart';
import 'package:payment/models/payment_intent_request_body.dart';
import 'package:payment/models/payment_intent_response/payment_intent_response.dart';
import 'package:payment/services/api_service.dart';

class StripeService {
  final ApiService _apiService = ApiService();

  Future<PaymentIntentResponse> createPaymentIntent(
    PaymentIntentRequestBody paymentIntentRequestBody,
  ) async {
    var response = await _apiService.post(
      body: paymentIntentRequestBody.toJson(),
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
    );

    final paymentIntent = PaymentIntentResponse.fromJson(response.data);

    return paymentIntent;
  }

  Future<void> initPaymentSheet({
    required String paymentIntentClientSecret,
    String merchantDisplayName = 'Ahmed Ghaly',
  }) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: merchantDisplayName,
      ),
    );
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }
}
