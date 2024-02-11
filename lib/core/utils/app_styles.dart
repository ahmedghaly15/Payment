import 'package:flutter/material.dart';
import 'package:payment/core/utils/functions/get_responsive_text.dart';

class AppStyles {
  static TextStyle styleMedium25(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 25),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleRegular20(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleRegular18(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleMedium22(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 22),
        fontWeight: FontWeight.w500,
      );
}
