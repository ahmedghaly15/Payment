import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utils/api_keys.dart';
import 'package:payment/models/ephemeral_key_response_body/ephemeral_key_response_body.dart';
import 'package:payment/models/payment_intent_request_body.dart';
import 'package:payment/models/payment_intent_response/payment_intent_response.dart';
import 'package:payment/services/api_service.dart';

class StripeService {
  final ApiService _apiService = ApiService();

  Future<PaymentIntentResponse> _createPaymentIntent(
    PaymentIntentRequestBody paymentIntentRequestBody,
  ) async {
    var response = await _apiService.post(
      body: paymentIntentRequestBody.toJson(),
      url: 'https://api.stripe.com/v1/payment_intents',
    );

    final paymentIntent = PaymentIntentResponse.fromJson(response.data);

    return paymentIntent;
  }

  Future<void> _initPaymentSheet({
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

  Future<void> _displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<void> pay(
    PaymentIntentRequestBody paymentIntentRequestBody,
  ) async {
    var paymentIntent = await _createPaymentIntent(
      paymentIntentRequestBody,
    );

    await _initPaymentSheet(
      paymentIntentClientSecret: paymentIntent.clientSecret!,
    );

    await _displayPaymentSheet();
  }

  Future<EphemeralKeyResponseBody> createEphemeralKey({
    required String customerId,
  }) async {
    var response = await _apiService.post(
      body: {
        'customer': customerId,
      },
      url: 'https://api.stripe.com/v1/payment_intents',
      headers: {
        'Authorization': "Bearer ${ApiKeys.secretKey}",
        'Stripe-Version': '2023-08-16',
      },
    );

    final ephemeralKey = EphemeralKeyResponseBody.fromJson(response.data);

    return ephemeralKey;
  }
}
