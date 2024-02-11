import 'package:payment/core/utils/app_assets.dart';
import 'package:payment/models/product_info_model.dart';
import 'package:payment/models/thank_you_info_model.dart';

class Constants {
  Constants._();

  static const List<ProductInfoModel> productInfoList = <ProductInfoModel>[
    ProductInfoModel(
      title: 'Order Subtotal',
      amount: 42.29,
    ),
    ProductInfoModel(
      title: 'Discount',
      amount: 0,
    ),
    ProductInfoModel(
      title: 'Shipping',
      amount: 8,
    ),
  ];

  static const List<String> paymentMethodsImages = <String>[
    AppAssets.imagesCard,
    AppAssets.imagesPaypal,
    AppAssets.imagesMasterCard,
  ];

  static const double paymentMethodHeight = 62;

  static const List<ThankYouInfoModel> thankYouInfo = <ThankYouInfoModel>[
    ThankYouInfoModel(
      title: 'Date',
      info: '01/24/2023',
    ),
    ThankYouInfoModel(
      title: 'Time',
      info: '10:15 AM',
    ),
    ThankYouInfoModel(
      title: 'To',
      info: 'Sam Louis',
    ),
  ];
}
