import 'package:club/UI/dashboard.dart';
import 'package:club/model/user_type.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              Provider.of<User>(context, listen: false).adminLogin();
              Navigator.of(context).pushReplacementNamed(MainPage.route);
            },
            child: Text('Admin Login'),
          ),
          SizedBox(
            width: 30,
          ),
          RaisedButton(
            onPressed: (){
              Provider.of<User>(context, listen: false).studentLogin();
              Navigator.of(context).pushReplacementNamed(MainPage.route);
            },
            child: Text('Student Login'),
          ),
        ],
      ),
    );
  }
}
