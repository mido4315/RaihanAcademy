import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raihan_academy/core/colors.dart';
import 'package:raihan_academy/core/constant.dart';
import 'package:raihan_academy/state%20management/App%20Provider/AppProvider.dart';
import 'package:raihan_academy/views/presentation/lecturesTable/LectureTable.dart';
import 'package:raihan_academy/views/widget/ScreenBackground.dart';

import '../../../state management/App Provider/lectureTableProvider.dart';
import '../../widget/CusTextField.dart';
import '../teacher main view/teacher_main_view.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController conUserName = TextEditingController();
  TextEditingController conPassword = TextEditingController();
  bool passwordEye = false;
  @override
  Widget build(BuildContext context) {
    final isKeyBoard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Consumer<ProviderApp>(builder: (context, _, child) {
      return SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColor.white,
            body: Stack(
              children: [
                ScreenBackground(),
                Column(
                  children: [
                    isKeyBoard
                        ? SizedBox()
                        : Container(
                            height: mediaH * 0.35,
                            width: mediaW * 0.45,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Image(
                                image: AssetImage('assets/image/logoWord.png'),
                              ),
                            ),
                          ),
                    SizedBox(
                      height: mediaH * 0.03,
                    ),
                    Container(
                      height: mediaH * 0.11,
                      width: mediaW * 0.28,
                      // color: Colors.orange,
                      child: Image.asset(
                        'assets/image/button/${_.userType}.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    CusTextField(
                      controller: conUserName,
                      textTitle: 'اسم المستخدم',
                    ),
                    CusTextField(
                      controller: conPassword,
                      textTitle: 'كلمه المرور',
                      passwordMod: !passwordEye,
                      prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordEye = !passwordEye;
                          });
                        },
                        icon: Icon(passwordEye
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined),
                        color: AppColor.white,
                      ),
                    ),
                    SizedBox(
                      height: mediaH * 0.05,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        if (conUserName.text == null ||
                            conUserName.text.isEmpty ||
                            conPassword.text.length < 5 ||
                            conPassword.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('اعد ادخال البيانات صحيحه',textAlign: TextAlign.end,style: TextStyle(fontSize: mediaW*0.045),),
                              duration: Duration(seconds: 3),
                            ),
                          );
                        } else
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TeacherMainView(),
                            ),
                          );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.darkGreen,
                      ),
                      child: Container(
                        height: mediaH * 0.07,
                        width: mediaW * 0.3,
                        child: Center(
                          child: Text(
                            'تسجيل الدخول ',
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: mediaW * 0.05),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
