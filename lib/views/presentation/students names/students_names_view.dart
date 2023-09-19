import 'package:flutter/material.dart';
import 'package:raihan_academy/views/widget/custom_app_bar.dart';

import '../../../core/colors.dart';
import '../../../core/constant.dart';
import '../../widget/ScreenBackground.dart';
import 'widgets/student_info_table.dart';

class StudentNamesView extends StatelessWidget {
  const StudentNamesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ScreenBackground(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  SizedBox(
                    height: mediaH * 0.09,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/image/logo.png",
                          width: 0.12 * mediaW,
                        ),
                        const Text(
                          "أسماء الطلاب",
                          style: TextStyle(
                              fontSize: 36,
                              color: AppColor.darkGreen,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  const StudentInfoTable(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}