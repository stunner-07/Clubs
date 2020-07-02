import 'package:flutter/material.dart';

class Project {
  String name;
  double tasks;
  String image;
  Color color;

  Project({this.name, this.tasks,this.image, this.color});
}

List<Project> projectItems = [
  Project(
    name: 'Nivas Reddy',
    tasks: 89,
    color: Colors.yellow,
  ),
  Project(
    name: 'Ananta Srikar',
    tasks: 85,
    color: Colors.lightBlue,
  ),
  Project(
    name: 'Anurag Tekale',
    tasks: 75,
    color: Colors.red,
  ),
];
