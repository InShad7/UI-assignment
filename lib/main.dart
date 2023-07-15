import 'package:flutter/material.dart';
import 'package:sunruleui/view/home_screen/home_screen.dart';
import 'package:sunruleui/view/home_screen/widget/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
