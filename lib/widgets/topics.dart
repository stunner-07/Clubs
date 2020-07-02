import 'package:flutter/material.dart';

class Topics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'Topics of Focus',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          width: 200,
          height: 51,
          padding: EdgeInsets.only(top: 15, left: 59, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.orange[100],
          ),
          child: Text(
            'Game Dev',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 200,
          height: 51,
          padding: EdgeInsets.only(top: 15, left: 62, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.orange[100],
          ),
          child: Text(
            'Web Dev',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 200,
          height: 51,
          padding: EdgeInsets.only(top: 15, left: 62, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.orange[100],
          ),
          child: Text(
            'App Dev',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 200,
          height: 51,
          padding: EdgeInsets.only(top: 15, left: 49, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.orange[100],
          ),
          child: Text(
            'Data Science',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
