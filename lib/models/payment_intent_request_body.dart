class PaymentIntentRequestBody {
  final String amount, currency;

  const PaymentIntentRequestBody({
    required this.amount,
    required this.currency,
  });

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'currency': currency,
      };
}
