import 'package:flutter/material.dart';
import 'package:payment/core/utils/functions/get_responsive_text.dart';

class AppStyles {
  static TextStyle styleMedium25(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 25),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleMedium22(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 22),
        fontWeight: FontWeight.w500,
      );
}
