import 'package:flutter/material.dart';
import 'package:qr_code/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR APP',
      theme: ThemeData(
      ),
      home: HomeScreen(),
    );
  }
}


