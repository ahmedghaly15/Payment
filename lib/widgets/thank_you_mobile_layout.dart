import 'package:flutter/material.dart';
import 'package:payment/widgets/custom_thank_you_card.dart';

class ThankYouMobileLayout extends StatelessWidget {
  const ThankYouMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        SliverFillRemaining(
          child: CustomThankYouCard(),
        ),
      ],
    );
  }
}
