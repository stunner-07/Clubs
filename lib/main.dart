import 'package:flutter/material.dart';
import 'package:club/UI/dashboard.dart';
import './UI/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widhya App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: MainPage(),
    );
  }
}
