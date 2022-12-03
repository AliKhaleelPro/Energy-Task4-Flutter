import 'package:dart_flutter_task3/view/screens/add_cart.dart';
import 'package:dart_flutter_task3/view/screens/home_page.dart';
import 'package:dart_flutter_task3/view/screens/splash_screen.dart';
import 'package:dart_flutter_task3/view/screens/te.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Task Three',
          theme: ThemeData.light(),
          home: SplashScreen1() ,
        );
      },
    );
  }
}