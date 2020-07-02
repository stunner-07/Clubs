import 'package:club/UI/dashboard.dart';
import 'package:club/UI/sample_login.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:google_fonts/google_fonts.dart';

import 'model/user_type.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: User(),
        ),
      ],
      child: MaterialApp(
        title: 'Widhya App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          fontFamily: GoogleFonts.montserrat().fontFamily,
        ),
        home: Login(),
        routes: {
          MainPage.route:(ctx)=>MainPage(),
        },
      ),
    );
  }
}
