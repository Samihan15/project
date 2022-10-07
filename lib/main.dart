import 'package:flutter/material.dart';
import 'package:new_project/screens/info_screen.dart';
import 'package:new_project/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
