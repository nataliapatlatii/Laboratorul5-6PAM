import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_lab_4/screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Online Shop",
      home: MainScreen(),
    );
  }
}
