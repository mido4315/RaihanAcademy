import 'package:flutter/material.dart';
import 'package:raihan_academy/core/colors.dart';
import 'package:raihan_academy/core/constant.dart';

List<String> day = ['الجمعة','الخميس','الأربعاء','الثلاثاء','الأثنين','الأحد','السبت'];

Widget LectureTableDays(){
  return Container(
    height: mediaH*0.08,
    width: mediaW,
    decoration: BoxDecoration(
      color: PublicColor().darkGreen,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(day.length, (index) {
        return GestureDetector(
          onTap: (){
            print('${index}');
          },
          child: Container(
            height: mediaH*0.075,
            width: mediaW*0.13,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: PublicColor().darkGreen
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${day[index]}',style: TextStyle(color: PublicColor().white),),
                Text('${20 -index}',style: TextStyle(color: PublicColor().ment),),
              ],
            ),
          ),
        );
      }),
    ),
  );
}