import 'package:payment/core/utils/app_assets.dart';
import 'package:payment/models/product_info_model.dart';

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
}
