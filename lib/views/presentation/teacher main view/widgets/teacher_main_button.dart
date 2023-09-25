import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/constant.dart';

class TeacherMainButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const TeacherMainButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: mediaW * 0.42,
        height: mediaH * 0.2,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: AppColor.darkGreen,
              offset: Offset(2, 1),
              blurRadius: 0,
              spreadRadius: -1,
            ),
            BoxShadow(
              color: AppColor.white,
              offset: Offset(1, -1),
              blurRadius: 1,
              spreadRadius: -2,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColor.darkGreen,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}