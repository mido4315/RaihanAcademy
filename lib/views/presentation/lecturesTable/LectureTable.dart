import 'package:flutter/material.dart';
import 'package:raihan_academy/core/colors.dart';
import 'package:raihan_academy/core/constant.dart';
import 'package:raihan_academy/views/presentation/lecturesTable/widget/LectureDays.dart';
import 'package:raihan_academy/views/widget/ScreenBackground.dart';
import '../../widget/LectureInfo.dart';
import 'ButtomSheet.dart';

class LecturesTable extends StatefulWidget {
  const LecturesTable({Key? key}) : super(key: key);

  @override
  State<LecturesTable> createState() => _LecturesTableState();
}

class _LecturesTableState extends State<LecturesTable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.timer),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const CusButtomSheet();
              },
            );
          },
        ),
        body: Stack(
          children: [
            ScreenBackground(),
            Container(
              padding: EdgeInsets.all(8),
              height: mediaH,
              width: mediaW,
              //color: PublicColor().lightorange,
              child: Column(
                children: [
                  Container(
                    height: mediaH * 0.15,
                    width: mediaW * 0.95,
                    //color: Colors.red,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: mediaH * 0.13,
                              width: mediaW * 0.3,
                              //color: Colors.green,
                              child: Image(
                                image: AssetImage('assets/image/logo.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: mediaH * 0.13,
                            width: mediaW * 0.55,
                            //color: Colors.amber,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'جدول الحصص',
                                  style: TextStyle(
                                      color: PublicColor().darkGreen,
                                      fontSize: mediaW * 0.085),
                                ),
                                Text(
                                  ' الاربعاء ( 30 / 9 / 2023 )',
                                  style: TextStyle(
                                      fontSize: mediaW * 0.04,
                                      color: PublicColor().ment),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(8, 10, 8, 0),
                    decoration: BoxDecoration(
                        color: PublicColor().lightorange.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        LectureDays(),
                        Container(
                          height: mediaH * 0.7,
                          width: mediaW * 0.9,
                          child: ListView(
                            children: [
                              LectureInfo(isTest: true),
                              LectureInfo(isTest: false),
                              LectureInfo(isTest: true),
                              LectureInfo(isTest: true),
                              LectureInfo(isTest: false),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


