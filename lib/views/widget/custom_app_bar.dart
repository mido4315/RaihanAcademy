import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaH * 0.09,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/image/logo.png",
            width: 0.12 * mediaW,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.darkGreen,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
            ),
            onPressed: () {},
            child: Row(
              children: [
                const Icon(Icons.notifications_active_rounded),
                SizedBox(
                  width: mediaW * 0.04,
                ),
                Text(
                  title,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}