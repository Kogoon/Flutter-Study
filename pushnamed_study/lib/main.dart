import 'package:flutter/material.dart';
import 'package:pushnamed_study/ScreenA.dart';
import 'package:pushnamed_study/ScreenB.dart';
import 'package:pushnamed_study/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 페이지 이동
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
      },
    );
  }
}
