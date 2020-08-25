import 'package:flutter/material.dart';
import 'package:testingflutterapp/colors.dart';
import 'package:testingflutterapp/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       primaryColor:  kBlackColor,         
      
        scaffoldBackgroundColor:  kBlackColor,
      ),
      home:HomeScreen(),
    );
  }
}

