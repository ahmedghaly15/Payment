import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      // Make height 48 means that it has 24 above and below it
      height: 48,
      thickness: 2,
      color: Color(0xffC7C7C7),
    );
  }
}
