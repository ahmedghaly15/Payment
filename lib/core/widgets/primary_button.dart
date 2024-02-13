import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';
import 'package:payment/core/utils/colors_manager.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.backgroundColor = ColorsManager.primaryColor,
    this.textColor = Colors.white,
    this.isLoading = false,
  });

  final String buttonText;
  final Color backgroundColor, textColor;
  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: isLoading
            ? const CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
              )
            : Text(
                buttonText,
                style: AppStyles.styleMedium22(context).copyWith(
                  color: textColor,
                ),
              ),
      ),
    );
  }
}
