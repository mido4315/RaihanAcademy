import 'package:flutter/material.dart';
import 'package:raihan_academy/core/colors.dart';
import 'package:raihan_academy/core/constant.dart';

class LectureInfo extends StatelessWidget {
  LectureInfo({required this.isTest});
  bool isTest = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: mediaH * 0.25,
            width: mediaW * 0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isTest ?PublicColor().teriary:PublicColor().cyan,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                isTest?Text(
                  'حصة تجريبية',
                  style: TextStyle(
                      color: PublicColor().dark, fontSize: mediaW * 0.09),
                ):Text(
                  'حصة محجوزة',
                  style: TextStyle(
                      color: PublicColor().orange, fontSize: mediaW * 0.09),
                ),
                Text(
                  'الطالب  : اسامة انور',
                  style: TextStyle(
                      color:isTest?PublicColor().dark: PublicColor().white, fontSize: mediaW * 0.07),
                ),
                Text(
                  'الحفظ : سورة الذاريات',
                  style: TextStyle(
                      color:isTest?PublicColor().dark: PublicColor().white, fontSize: mediaW * 0.07),
                ),
              ],
            ),
          ),
          Card(
            color:isTest? PublicColor().dark:PublicColor().white,
            child: SizedBox(
              height: mediaH * 0.06,
              width: mediaW * 0.12,
              child: Center(
                child: Text(
                  '10',
                  style: TextStyle(color: isTest?PublicColor().white:PublicColor().dark),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
