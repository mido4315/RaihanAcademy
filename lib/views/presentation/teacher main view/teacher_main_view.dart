import 'package:flutter/material.dart';
import 'package:raihan_academy/core/colors.dart';
import 'package:raihan_academy/views/widget/ScreenBackground.dart';

import '../../../core/constant.dart';
import '../../widget/custom_app_bar.dart';
import 'widgets/teacher_main_button.dart';
import 'widgets/welcome_message.dart';

class TeacherMainView extends StatelessWidget {
  const TeacherMainView({Key? key}) : super(key: key);

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
                  const CustomAppBar(title: 'رسالة',),
                  const WelcomeMessage(),
                  SizedBox(
                    height: mediaH * 0.01,
                  ),
                  Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TeacherMainButton(
                            title: "تقرير\nالحصص",
                            onPressed: null,
                          ),
                          TeacherMainButton(
                            title: "جدول\nالحصص",
                            onPressed: null,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mediaH * 0.01,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TeacherMainButton(
                            title: "أسماء\nالطلاب",
                            onPressed: null,
                          ),
                          TeacherMainButton(
                            title: "مكافئات\nو جزاءات",
                            onPressed: null,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mediaH * 0.01,
                      ),
                      const TeacherMainButton(
                        title: "الحصص\nالتجريبية",
                        onPressed: null,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mediaH * 0.02,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      textAlign: TextAlign.right,
                      text: const TextSpan(
                        text: 'عدد حصصك اليوم : ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: '10 حصص',
                            style: TextStyle(
                              color: AppColor.mint,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '\nراتبك الحالي : ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '400 ج.م',
                            style: TextStyle(
                              color: AppColor.mint,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class TeacherMainButton extends StatelessWidget {
//   final String title;
//   final VoidCallback? onPressed;
//
//   const TeacherMainButton({
//     required this.title,
//     required this.onPressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Container(
//         width: mediaW * 0.42,
//         height: mediaH * 0.2,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           gradient: const LinearGradient(
//             colors: [AppColor.pattern, AppColor.cyan],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Container(
//             width: mediaW * 0.41,
//             height: mediaH * 0.192,
//             padding: const EdgeInsets.all(8.0), // Adjust the padding as needed
//             decoration: BoxDecoration(
//               color: AppColor.buttonInk, // Red background color
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Center(
//               child: Text(
//                 title,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   color: AppColor.darkGreen,
//                   fontSize: 32,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }