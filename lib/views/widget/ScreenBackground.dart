import 'package:flutter/cupertino.dart';
import 'package:raihan_academy/core/colors.dart';
import 'package:raihan_academy/core/constant.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaH,
      width: mediaW,
      color: AppColor.buttonInk,
      child: const Opacity(
        opacity: 0.5,
        child: Image(
          image: AssetImage('assets/image/background.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}