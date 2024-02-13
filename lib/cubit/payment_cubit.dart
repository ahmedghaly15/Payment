import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/models/payment_intent_request_body.dart';
import 'package:payment/repos/checkout_repo.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final CheckoutRepo checkoutRepo;

  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());

  Future<void> pay(
    PaymentIntentRequestBody paymentIntentRequestBody,
  ) async {
    emit(PaymentLoading());

    var data = await checkoutRepo.pay(paymentIntentRequestBody);

    data.fold(
      (l) => emit(PaymentFailure(failure: l.toString())),
      (r) => emit(PaymentSuccess()),
    );
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
