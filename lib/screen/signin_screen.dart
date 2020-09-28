import 'package:flutter/material.dart';
import 'package:ugca_mobileapp/screen/singup_screen.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  String studentId = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).accentColor,
        child: ListView(
          children: <Widget>[
            Container(
              //color: Colors.blue,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(80))),
                    //padding: EdgeInsets.all(10.0),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 45.0,
                  ),
                  FlatButton(
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {
                      navigateToSignup(context);
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Student ID',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38)),
                        onChanged: (String string) {
                          setState(() {
                            studentId = string;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38)),
                        onChanged: (String string) {
                          setState(() {
                            password = string;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ButtonTheme(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                        buttonColor: Theme.of(context).primaryColor,
                        minWidth: 340.0,
                        height: 60.0,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            'CONTINIUE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future navigateToSignup(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignupScreen()));
  }
}
