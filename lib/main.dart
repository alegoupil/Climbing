import 'package:climbing/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gabarito'),
      home: const HomePage(),
    );
  }
}

class MyColors{
  static const lightBlack =  Color(0xFF4F4F4F);
  static const pink =  Color(0xFFCD60C2);
  static const almostWhite =  Color(0xFFF9F9F9);
  static get pinkBackground => const Color(0x26FF70F1);
  static const disactiveGrey =  Color(0xFFAAAAAA);
}