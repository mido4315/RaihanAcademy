import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raihan_academy/core/constant.dart';
import 'package:raihan_academy/main.dart';
import 'package:raihan_academy/state%20management/App%20Provider/AppProvider.dart';
import 'package:raihan_academy/views/presentation/login/login.dart';
import 'package:raihan_academy/views/widget/ScreenBackground.dart';
import '../../../state management/App Provider/lectureTableProvider.dart';

class TypeScreen extends StatelessWidget {
  const TypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ScreenBackground(),
            Column(
              children: [
                SizedBox(
                  height: mediaH * 0.03,
                ),
                SizedBox(
                  height: mediaH * 0.45,
                  width: mediaW * 0.6,
                  //color: Colors.orange,
                  child: Image(
                    image: AssetImage('assets/image/logoWord.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TypeButton(image: 'student'),
                        TypeButton(image: 'teacher'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TypeButton(image: 'maneger'),
                        TypeButton(image: 'supervisor'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget TypeButton({required String image}) {
    return Container(
      height: mediaH * 0.18,
      width: mediaW * 0.4,
      //color: Colors.cyan,
      child: IconButton(
        onPressed: () {
          print(image);
          Provider.of<ProviderApp>(navigationKey.currentContext!,listen: false).selectType(image);
          Navigator.push(
            navigationKey.currentContext!,
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
          );
        },
        icon: Image.asset(
          'assets/image/button/$image.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
