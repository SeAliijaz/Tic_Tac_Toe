import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Main_Screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      ///Title
      title: 'Tic-Tac-Toe',

      ///Theme
      ///Blue
      ///Red
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.red,
      ),

      ///DebugShowCheckedModeBanner
      debugShowCheckedModeBanner: false,

      ///Home
      home: HomePage(),
    );
  }
}
