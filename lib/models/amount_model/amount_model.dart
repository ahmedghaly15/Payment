import 'details.dart';

class AmountModel {
  String? total;
  String? currency;
  Details? details;

  AmountModel({this.total, this.currency, this.details});

  factory AmountModel.fromJson(Map<String, dynamic> json) {
    return AmountModel(
      total: json['total'] as String?,
      currency: json['currency'] as String?,
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'currency': currency,
      'details': details?.toJson(),
    };
  }
}
