import 'package:flutter/material.dart';
import 'package:new_app/app/landing_page.dart';

void main(List<String> args) {
  runApp(MyApp());
  }
  
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Time Tracker',
       theme: ThemeData(
         primarySwatch: Colors.green,
       ),//ftftyr
       home: LandingPage(),
     );
   }
 }

