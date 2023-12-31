import 'package:flutter/material.dart';

import '../../core/colors.dart';

class ProviderLectureTable extends ChangeNotifier {
  int selected=0;
  List<String> days = ['الجمعة','الخميس','الأربعاء','الثلاثاء','الأثنين','الأحد','السبت'];
  List<Color> dayColor=List.generate(7, (index) => AppColor.darkGreen);


  changeDayColor(){
    dayColor = List.generate(dayColor.length, (index) => AppColor.darkGreen);
    dayColor[selected] = AppColor.dark;
    notifyListeners();
  }





  List<int> hours = [8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<String> hourMod = [
    'ص',
    'ص',
    'ص',
    'ص',
    'م',
    'م',
    'م',
    'م',
    'م',
    'م',
    'م',
    'م',
    'م',
    'م',
    'م'
  ];
  List<Color> hourColor = [
    AppColor.dark,
    AppColor.wrong,
    AppColor.cyan,
    AppColor.cyan,
    AppColor.wrong,
    AppColor.dark,
    AppColor.dark,
    AppColor.dark,
    AppColor.cyan,
    AppColor.dark,
    AppColor.wrong,
    AppColor.wrong,
    AppColor.dark,
    AppColor.cyan,
    AppColor.dark,
  ];
  List<double>hourshadow =[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  setSelected(int time){
    selected = time;
    print('selected time : $selected');
    notifyListeners();
  }
  setEmptyHour(){
    hourColor=List.generate(hourColor.length, (index) => AppColor.dark);
    notifyListeners();
  }
  setAvailableTime(){
    hourColor[selected]=AppColor.cyan;
    print('${hourColor[selected]}');
    notifyListeners();
  }
  setUNavailableTime(){
    hourColor[selected]=AppColor.wrong;
    notifyListeners();
  }
  setShadow(){
    print('set shadow');
    hourshadow=List.generate(hourshadow.length, (index) => 0);
    hourshadow[selected]=4;
    notifyListeners();
  }
}
