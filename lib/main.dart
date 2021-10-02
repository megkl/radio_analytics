import 'package:flutter/material.dart';
import 'package:radio_analytics/Screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: SplashScreen()
    );
  }
}

