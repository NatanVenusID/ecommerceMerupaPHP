import 'package:flutter/material.dart';
import 'package:merupastore_app/UI/loginpage.dart';
import 'package:merupastore_app/UI/onboardingscreen.dart';


void main() => runApp(new MyApp());

String username='';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new OnBoardingScreen(),
      routes: <String,WidgetBuilder>{

        '/MyHomePage': (BuildContext context)=> new PageLogin(),
      },
    );
  }
}