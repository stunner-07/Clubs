import 'package:flutter/material.dart';

class MainPage2 extends StatelessWidget {
  const MainPage2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Container(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sign in to',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      letterSpacing: 1.0,
                    ),
                  ),
                  Text(
                    'Widhya E-Learning Platform',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.pink,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  'Enter your details below',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 400,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Should be min 5 characters',
                    icon: Image.asset('images/user.png'),
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                width: 400,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText:
                        'Choosing a hard-to-guess, but easy-to-remember password is important! ...',
                    icon: Image.asset('images/closed-lock.png'),
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.pink,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    OutlineButton(
                      padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                      borderSide: BorderSide(
                        color: Colors.pink,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.only(top: 20),
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    color: Colors.grey,
                  ))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('images/facebook.png'),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset('images/youtube.png'),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset('images/twitter.png'),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset('images/github.png'),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
