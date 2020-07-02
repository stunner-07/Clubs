import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:club/widgets/topics.dart';
import '../widgets/chartcard.dart';
import '../widgets/comment.dart';
import '../widgets/profile.dart';
import '../widgets/project.dart';

class MainPage extends StatelessWidget {
  static const route = '/dashboard';
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    print(_media);
    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.network(
                      'https://media-exp1.licdn.com/dms/image/C510BAQFj2IOVxDuVQA/company-logo_200_200/0?e=2159024400&v=beta&t=BRAxOREbvXrWT_z3F2OePswp1I7FuH0xMBQ1ZBslwL4',
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Widhya',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff1b1e44),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ProfileWidget(
                  media: _media,
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Container(
                    child: Topics(),
                    decoration: BoxDecoration(
                      color: Colors.orange[50],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 350,
                    width: 350,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 55,
          ),
          Container(
            color: Colors.grey[300],
            height: double.infinity,
            width: 1,
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 55,
                  width: _media.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 650,
                        ),
                        FlatButton(
                          hoverColor: Colors.red[300],
                          onPressed: () {},
                          child: Text(
                            'DashBoard',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'WorkSans-SemiBold.ttf',
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        FlatButton(
                          hoverColor: Colors.red[300],
                          onPressed: () {},
                          child: Text(
                            'Requests',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'WorkSans-SemiBold.ttf',
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 35.0,
                          width: 100.0,
                          child: Center(
                            child: GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushReplacementNamed('/'),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'WorkSans-SemiBold.ttf',
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                  color: Color(0xFFFB4C47), width: 1.5)),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 20),
                    children: <Widget>[
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 750.0),
                                  child: Text(
                                    'Widhya\'s Club',
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 825.0),
                                  child: Text(
                                    'Hello, Welcome Back !',
                                    style: TextStyle(
                                        color: Colors.grey[600], fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                                IntrinsicHeight(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Row(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            ChartCardTile(
                                              cardColor: Colors.lightBlue[50],
                                              cardTitle: '\nClub Events',
                                              subText: ' June 2020',
                                              events:
                                                  '\n1) : Hackathon - 2020\n\n2) : Internship-Drive - July 2020',
                                              icon: Icons.pie_chart,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        CommentWidget(media: _media),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                              ],
                            ),
                            // QuickContact(media: _media)
                          ],
                        ),
                      ),
                      IntrinsicHeight(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                  top: 20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.lightBlue[50],
                                ),
                                height: _media.height / 1.8,
                                width: _media.width / 3.5,
                                child: Column(
                                  children: [
                                    Text(
                                      'About the Club',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Icon(Icons.info),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                            '      Widhya is an EdTech startup that focuses on'),
                                      ],
                                    ),
                                    Text(
                                        'helping students become industry ready'),
                                    SizedBox(height: 5),
                                    Text(
                                        '   by adopting "Learning By Doing" approach'),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 1,
                                      width: double.infinity,
                                      color: Colors.grey[400],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Club Members',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Rohan Avlur (President)',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'NS Raghav (Secretary)',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Sriker (Vice-President)',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 50),
                              ProjectWidget(media: _media),
                            ],
                          ),
                        ),
                      ),
                    ],
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
