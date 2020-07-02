import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../common/theme.dart';

class CardTile extends StatelessWidget {
  final String cardTitle;
  final IconData icon;
  final Color iconBgColor;

  const CardTile(
      {Key key,
      this.cardTitle,
      this.icon,
      this.iconBgColor,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return FittedBox(
      child: Container(
        height: _media.height / 6,
        width: _media.width / 7,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Material(
              elevation: 10,
              color: Colors.white,
              shadowColor: Colors.grey,
              borderRadius: BorderRadius.circular(25),
              child: Container(
                height: _media.height / 9.5,
                width: _media.width / 8,
                padding: EdgeInsets.only(right: 14, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      cardTitle,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 25,
              child: Material(
                color: iconBgColor,
                borderRadius: BorderRadius.circular(25),
                elevation: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: iconBgColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: _media.height / 15,
                  width: _media.width / 24,
                  child: Icon(
                    icon,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
