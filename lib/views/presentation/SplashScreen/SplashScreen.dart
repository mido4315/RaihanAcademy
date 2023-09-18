import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:raihan_academy/core/colors.dart';
import 'package:raihan_academy/core/constant.dart';
import 'package:raihan_academy/views/presentation/SplashScreen/TypeScreen.dart';
import 'package:raihan_academy/views/presentation/login/login.dart';
import 'package:raihan_academy/views/widget/ScreenBackground.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: PublicColor().pbuttonink,
        curve: Curves.bounceOut,
        duration:2000,
        splashIconSize:mediaH*0.3,
        splash: Container(
          height: mediaH,
          width: mediaW ,
          //color: Colors.amber,
          child: Image.asset('assets/image/logoWord.png'),
        ),
        nextScreen: TypeScreen());
  }
}
