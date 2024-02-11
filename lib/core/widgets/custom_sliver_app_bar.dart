import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_styles.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        title,
        style: AppStyles.styleMedium25(context),
      ),
      centerTitle: true,
    );
  }
}
