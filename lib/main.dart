import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raihan_academy/state%20management/App%20Provider/AppProvider.dart';
import 'package:raihan_academy/state%20management/App%20Provider/lectureTableProvider.dart';
import 'package:raihan_academy/views/presentation/SplashScreen/SplashScreen.dart';


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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProviderLectureTable>(create: (context)=>ProviderLectureTable()),
        ChangeNotifierProvider<ProviderApp>(create: (context)=>ProviderApp()),
      ],
      child: MaterialApp(
        navigatorKey: navigationKey,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: SplashScreen(),
      ),
    );
  }
}


