import 'package:flutter/material.dart';
import 'package:weather_app/modules/main_pages/presentation/pages/main_screen.dart';
import 'package:weather_app/network/remote/dio_helper.dart';

void main() {
  DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

