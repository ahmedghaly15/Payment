import 'package:dartz/dartz.dart';
import 'package:payment/errors/failure.dart';
import 'package:payment/models/payment_intent_request_body.dart';
import 'package:payment/repos/checkout_repo.dart';
import 'package:payment/services/stripe_service.dart';

class CheckoutRepoImpl implements CheckoutRepo {
  final StripeService _stripeService = StripeService();

  @override
  Future<Either<Failure, void>> pay(
    PaymentIntentRequestBody paymentIntentRequestBody,
  ) async {
    try {
      await _stripeService.pay(paymentIntentRequestBody);

      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(failure: e.toString()));
    }
  }
}
