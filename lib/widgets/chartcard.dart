import 'package:flutter/material.dart';
import './responsive.dart';
import 'curvebtn.dart';

class ChartCardTile extends StatelessWidget {
  final Color cardColor;
  final String cardTitle;
  final String subText;
  final String events;
  final IconData icon;
  final String typeText;

  const ChartCardTile(
      {Key key,
      this.cardColor,
      this.cardTitle,
      this.subText,
      this.events,
      this.icon,
      this.typeText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(25),
      shadowColor: Colors.grey,
      color: cardColor,
      child: Stack(
        children: <Widget>[
          Container(
            padding: _media.width >= 1280
                ? EdgeInsets.only(left: 15)
                : EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: cardColor,
            ),
            height: _media.height / 1.8,
            width: _media.width / 3.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 70.0),
                      child: Icon(icon, size: 30, color: Colors.black),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FittedBox(
                          child: Text(
                            cardTitle,
                            softWrap: true,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: ResponsiveWidget.isLargeScreen(context)
                                  ? 26
                                  : 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          subText,
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        SizedBox(height: 5),
                        Text(
                          events,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 201,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250.0),
                  child: Container(
                    width: 150,
                    height: 40,
                    padding: EdgeInsets.only(top: 10, left: 18, right: 15),
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      'Participate Now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
