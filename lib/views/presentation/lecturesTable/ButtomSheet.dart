import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/colors.dart';
import '../../../core/constant.dart';
import '../../../state management/App Provider/lectureTableProvider.dart';

class CusButtomSheet extends StatefulWidget {
  const CusButtomSheet({Key? key}) : super(key: key);

  @override
  State<CusButtomSheet> createState() => _CusButtomSheetState();
}

class _CusButtomSheetState extends State<CusButtomSheet> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderLectureTable>(builder: (context, p, child) {
      return Container(
        height: mediaH * 0.6,
        width: mediaW,
        color: AppColor.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CusButtonBar(
                      text: ' إعاده ضبط',
                      color: AppColor.dark,
                      fun: () => p.setEmptyHour(),
                      conWidth: mediaW * 0.23),
                  Center(
                    child: Text(
                      'إعدادات اليوم',
                      style: TextStyle(
                          color: AppColor.veryDark,
                          fontSize: mediaW * 0.08),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: mediaH * 0.03),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              height: mediaH * 0.13,
              width: mediaW * 0.9,
              decoration: BoxDecoration(
                color: AppColor.lightOrange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  p.hours.length,
                  (index) => GestureDetector(
                    onTap: () {
                      p.setSelected(index);
                      p.setShadow();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        //height: mediaH * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: p.hourColor[index],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              //blurRadius: 10,
                              // blurStyle: BlurStyle.solid,
                              spreadRadius: p.hourshadow[index],
                              //offset: Offset(0, 0), // Shadow position
                            ),
                          ],
                        ),
                        width: mediaW * 0.15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${p.hours[index]}',
                              style: TextStyle(
                                  color: AppColor.white, fontSize: 20),
                            ),
                            Text(
                              '${p.hourMod[index]}',
                              style: TextStyle(
                                  color: AppColor.tertiary, fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: mediaH * 0.05),
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                CusButtonBar(
                    text: 'متاح',
                    color: AppColor.cyan,
                    fun: () => p.setAvailableTime()),
                CusButtonBar(
                    text: 'غير متاح',
                    color: AppColor.wrong,
                    fun: () => p.setUNavailableTime()),
              ],
            ),
            SizedBox(height: mediaH * 0.03),
            CusButtonBar(
                text: ' حفظ التغيرات',
                color: AppColor.lightOrange,
                fun: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'تم حفظ التغيرات',
                        textAlign: TextAlign.end,
                      ),
                    ),
                  );
                },
                conHeight: mediaH * 0.07,
                conWidth: mediaW * 0.3,
                textColor: AppColor.dark),
          ],
        ),
      );
    });
  }

  Widget CusButtonBar(
      {required String text,
      required Color color,
      required Function? fun,
      Color? textColor,
      double? conHeight,
      double? conWidth}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        fun!();
      },
      child: Container(
        height: conHeight ?? mediaH * 0.06,
        width: conWidth ?? mediaW * 0.18,
        //color: Colors.green,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: mediaW * 0.05,
                color: textColor ?? AppColor.white),
          ),
        ),
      ),
    );
  }
}
