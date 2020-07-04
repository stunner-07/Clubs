import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
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

  Map<String, dynamic> toMap() {
    return {
      'imgUrl': imgUrl,
      'name': name,
      'collegeName': collegeName,
      'noMem': noMem,
      'memName': memName,
      'shortdes': shortdes,
    };
  }

  static Details fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Details(
      map['imgUrl'],
      map['name'],
      map['collegeName'],
      map['noMem'],
      List<String>.from(map['memName']),
      map['shortdes'],
    );
  }
}

class ClubDetail with ChangeNotifier {
  Details _currentClub = Details(
      'https://media-exp1.licdn.com/dms/image/C510BAQFj2IOVxDuVQA/company-logo_200_200/0?e=2159024400&v=beta&t=BRAxOREbvXrWT_z3F2OePswp1I7FuH0xMBQ1ZBslwL4',
      'Widhya\'s Club',
      'College Name ,Location ',
      25,
      ['Anurag', 'Satya', 'Rahul'],
      'This is a great club !!!!!');
  Details get currentClub {
    print(_currentClub.collegeName);
    return _currentClub;
  }

  Future<void> fetchClub() async {
    final db = Firestore.instance;

    QuerySnapshot _myDoc = await db.collection('clubs').getDocuments();
    _myDoc.documents.forEach((element) async {
      _currentClub = (Details.fromMap(element.data));
    });
    // print(_currentClub.memName[0]);
    //notifyListeners();
  }

  Map<String, double> pieChartData = {
    'IIT B': 16,
    'IIT K': 26,
    'IIT G': 06,
    'IIT D': 12,
    'IIT M': 15,
  };
}
