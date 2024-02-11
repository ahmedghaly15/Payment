import 'package:flutter/material.dart';

class CustomThankYouContainer extends StatelessWidget {
  const CustomThankYouContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffEDEDED),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            // 20 because the default radius for CircleAvatar is 20, and we want to use the half of the CircleAvatar
            left: -20,
            bottom: screenHeight * 0.2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            // 20 because the default radius for CircleAvatar is 20, and we want to use the half of the CircleAvatar
            right: -20,
            bottom: screenHeight * 0.2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
// To make its half outside the Container
            top: -50,
            left: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Color(0xffEDEDED),
              radius: 50,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),
          Positioned(
            // plus 20 to make it be at the center of the white circle avatars
            bottom: screenHeight * 0.2 + 20,
            // added 20 because the radius of the white circle avatars is 20, so if it's just 8, the padding will not appear
            left: 20 + 8,
            right: 20 + 8,
            child: Row(
              children: List.generate(
                30,
                (index) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      color: const Color(0xffB8B8B8),
                      height: 2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
