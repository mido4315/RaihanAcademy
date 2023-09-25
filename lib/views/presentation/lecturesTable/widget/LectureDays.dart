import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../../../../core/colors.dart';
import '../../../../core/constant.dart';
import '../../../../state management/App Provider/lectureTableProvider.dart';

class LectureDays extends StatefulWidget {
  const LectureDays({Key? key}) : super(key: key);

  @override
  State<LectureDays> createState() => _LectureDaysState();
}

class _LectureDaysState extends State<LectureDays> {

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderLectureTable>(
      builder: (context,_,child) {
        return Container(
          height: mediaH*0.08,
          width: mediaW,
          decoration: BoxDecoration(
            color: AppColor.darkGreen,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_.days.length, (index) {
              return GestureDetector(
                onTap: (){
                  _.setSelected(index);
                  _.changeDayColor();
                  print('${index}');
                },
                child: Container(
                  height: mediaH*0.075,
                  width: mediaW*0.13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _.dayColor[index],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${_.days[index]}',style: TextStyle(color: AppColor.white),),
                      Text('${20 -index}',style: TextStyle(color: AppColor.mint),),
                    ],
                  ),
                ),
              );
            }),
          ),
        );
      }
    );
  }
}
