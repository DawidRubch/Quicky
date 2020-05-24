import 'package:flutter/material.dart';
import 'package:scratchcard/screens/HomePage/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final color = Color(0xff2A47BC);
  final int coinsCount = 1500;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        color: color,
        title: "Quickie",
        home: HomePage());
  }
}
