import 'package:flutter/material.dart';

enum Status { Accept, Reject }

class Comment {
  String name;
  String comment;
  Status status;
  String image;
  Color color;
  String date;

  Comment(
      {this.name,
      this.comment,
      this.status,
      this.image,
      this.color,
      this.date});
}

List<Comment> commentList = [
  Comment(
    name: 'Anurag Tekale',
    status: Status.Accept,
    image: 'assets/images/1.jpg',
    color: Colors.blue,
    date: 'May 17, 2020',
    comment:
        'Hey....! I want to challenge all the students who are flutter developers',
  ),
  Comment(
    name: 'Ananta Srikar',
    status: Status.Reject,
    image: 'assets/images/2.jpg',
    date: 'May 15, 2020',
    color: Colors.green,
    comment:
        'Hello guys, I want to challenge all the students who are python developers',
  ),
  Comment(
    name: 'Nivas Reddy',
    status: Status.Accept,
    color: Colors.red,
    image: 'assets/images/3.jpg',
    date: 'May 5, 2020',
    comment:
        'Hey..guys, I wanna challenge all of you to complete the task and get rewards',
  ),
];
