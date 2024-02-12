import 'package:dartz/dartz.dart';
import 'package:payment/errors/failure.dart';
import 'package:payment/models/payment_intent_request_body.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> pay(
    PaymentIntentRequestBody paymentIntentRequestBody,
  );
}
