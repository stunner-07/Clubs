import 'package:flutter/material.dart';

class MainPage1 extends StatelessWidget {
  const MainPage1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loginpage.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
