import 'package:flutter/material.dart';
import 'package:raihan_academy/core/colors.dart';
import 'package:raihan_academy/core/constant.dart';

class CusTextField extends StatelessWidget {
   CusTextField({required this.textTitle,required this.controller,this.prefixIcon,this.passwordMod=false});

   String textTitle;
   Widget? prefixIcon;
   bool? passwordMod  ;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(textTitle,textAlign: TextAlign.end,style: TextStyle(fontSize: mediaW*0.07,color: AppColor.veryDark),),
          TextField(
            controller: controller,
            textAlign: TextAlign.end,
            obscureText: passwordMod!,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColor.dark,
              prefixIcon: prefixIcon,
            ),
            style: TextStyle(
              color: AppColor.white,
              fontSize: mediaW*0.058
            ),
          ),
        ],
      ),
    );
  }
}
