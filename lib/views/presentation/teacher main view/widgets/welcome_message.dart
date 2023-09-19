import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: RichText(
        textAlign: TextAlign.right,
        text: const TextSpan(
          text: "مرحباً بك أستاذ",
          style: TextStyle(
              color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: ' علي',
              style: TextStyle(
                color: AppColor.mint,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}