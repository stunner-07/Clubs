import 'package:flutter/material.dart';
import '../widgets/cardtitle.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(width: 300),
              CardTile(
                iconBgColor: Colors.indigo[200],
              ),
              SizedBox(width: 30),
              CardTile(
                iconBgColor: Colors.blue,
              ),
              SizedBox(width: 30),
              CardTile(
                iconBgColor: Colors.green,
              ),
              SizedBox(width: 30),
              CardTile(
                iconBgColor: Colors.lightBlueAccent,
              ),
              SizedBox(width: 30),
            ],
          )
        ],
      ),
    );
  }
}
