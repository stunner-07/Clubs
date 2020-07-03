import 'package:club/model/clubs_detail.dart';
import 'package:club/model/user_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'curvebtn.dart';

class ProfileWidget extends StatelessWidget {
  Details club = Details(
      'https://media-exp1.licdn.com/dms/image/C510BAQFj2IOVxDuVQA/company-logo_200_200/0?e=2159024400&v=beta&t=BRAxOREbvXrWT_z3F2OePswp1I7FuH0xMBQ1ZBslwL4',
      'Widhya\'s Club',
      'College Name ,Location ',
      25,
      ['Anurag', 'Satya', 'Rahul'],
      'This is a great club !!!!!');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0, left: 30),
      child: Material(
        elevation: 10,
        shadowColor: Colors.grey,
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        child: Container(
          height: 450,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.black45,
                                ),
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: NetworkImage(
                                        'https://media-exp1.licdn.com/dms/image/C510BAQFj2IOVxDuVQA/company-logo_200_200/0?e=2159024400&v=beta&t=BRAxOREbvXrWT_z3F2OePswp1I7FuH0xMBQ1ZBslwL4')),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: Container(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Icon(Icons.cloud),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          club.name,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Icon(Icons.location_city),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          club.collegeName,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Icon(Icons.ac_unit),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          club.noMem.toString(),
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 350,
                      height: 61,
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 15, right: 15),
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                      ),
                      child: Row(
                        children: [
                          Text(
                            '    Join Our Club',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          if (Provider.of<User>(context).user == 0)
                            buttonContainer(
                                color: Colors.orange, name: 'Connect'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
