import 'package:flutter/material.dart';
import 'package:quiz/Q1.dart';
import 'package:quiz/Q2.dart';
import 'package:quiz/Q3.dart';
import 'package:quiz/Q4.dart';
import 'package:quiz/Q5.dart';
import 'package:quiz/result.dart';
import 'package:quiz/routues.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyRadioApp(),
      routes: {
        MyRoutes.qOne: (context) => const MyRadioApp(),
        MyRoutes.qTwo: (context) => const Q2(),
        MyRoutes.qThree: (context) => const Q3(),
        MyRoutes.qFour: (context) => const Q4(),
        MyRoutes.qFive: (context) => const Q5(),
        MyRoutes.res: (context) => const resultPage(),
      },
    );
  }
}
