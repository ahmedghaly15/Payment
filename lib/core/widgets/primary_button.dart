import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.backgroundColor = const Color(0xff4EB7F2),
    this.textColor = Colors.white,
  });

  final String buttonText;
  final Color backgroundColor, textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: AppStyles.styleMedium22(context).copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
