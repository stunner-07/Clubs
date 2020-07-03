import 'package:flutter/material.dart';

class Details {
  String imgUrl;
  String name;
  String collegeName;
  int noMem;
  List<String> memName;
  String shortdes;
  Details(this.imgUrl, this.name, this.collegeName, this.noMem, this.memName,
      this.shortdes);
}

class ClubDetail with ChangeNotifier {
  Map<String, double> pieChartData = {
    'IIT B': 16,
    'IIT K': 26,
    'IIT G': 06,
    'IIT D': 12,
    'IIT M': 15,
  };
}
