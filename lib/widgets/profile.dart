import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'curvebtn.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key key,
    @required Size media,
  })  : _media = media,
        super(key: key);

  final Size _media;

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
          height: 500,
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
                                // image: DecorationImage(
                                //   fit: BoxFit.fitHeight,
                                //   image: AssetImage(
                                //     'images/About.jpg',
                                //   ),
                                // ),
                                color: Colors.grey,
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
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Icon(Icons.cloud),
                        Text(
                          '  Widhya\'s Club',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.info),
                        Text(
                          '    Anurag Tekale',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55.0),
                      child: Text(
                        'I\'m Pursuing my B.Tech\nfrom Mahindra Ecole Centrale',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
                          'Hyderabad',
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
                          'No of Members: (x)',
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
