import 'package:flutter/cupertino.dart';
import 'package:raihan_academy/core/colors.dart';
import 'package:raihan_academy/core/constant.dart';

Widget ScreenBackground() {
  return Container(
    height: mediaH,
    width: mediaW,
    color: PublicColor().pbuttonink,
    child: Opacity(
      opacity: 0.5,
      child: Image(
        image: AssetImage('assets/image/background.png'),
        fit: BoxFit.fill,

      ),
    ),
  );
}
