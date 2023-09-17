import 'package:flutter/material.dart';
import 'package:raihan_academy/views/presentation/lecturesTable/teacherTable.dart';


GlobalKey<NavigatorState> _navigationKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> get navigationKey => _navigationKey;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigationKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LecturesTable(),
    );
  }
}


