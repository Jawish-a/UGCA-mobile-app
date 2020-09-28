import 'package:flutter/material.dart';
import 'package:ugca_mobileapp/screen/home_screen.dart';
import 'package:ugca_mobileapp/screen/signin_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String name = '';
  String studentId = '';
  String studentEmail = '';
  String password = '';
  String randomtext = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Color(0xffF1F0F2),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff8A56AC),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(80.0))),
                  height: 300,
                  //color: Colors.red,
                ),
                Container(
                  //color: Colors.white,
                  transform: Matrix4.translationValues(0.0, -180.0, 15.0),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton(
                                child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 18.0,
                                  ),
                                ),
                                onPressed: () {
                                  navigateToSignin(context);
                                },
                              ),
                              SizedBox(
                                width: 80.0,
                              ),
                              Text(
                                'SIGN UP',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            height: 370,
                            margin: EdgeInsets.only(
                                top: 30.0, left: 20.0, right: 20.0),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Name',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black38)),
                                    onChanged: (String string) {
                                      setState(() {
                                        name = string;
                                      });
                                    },
                                  ),
                                ),
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
                                        hintText: 'Student Email',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black38)),
                                    onChanged: (String string) {
                                      setState(() {
                                        studentEmail = string;
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextField(
                                    obscureText: true,
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
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              children: <Widget>[
                                //Text(randomtext),
                                ButtonTheme(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0),
                                  ),
                                  buttonColor: Theme.of(context).primaryColor,
                                  minWidth: 340.0,
                                  height: 60.0,
                                  child: RaisedButton(
                                    onPressed: () {
                                      registerApi();
                                    },
                                    child: Text(
                                      'CONTINIUE',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future navigateToSignin(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SigninScreen()));
  }
  Future navigateToHome(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  // send registeration request via API
  Future registerApi() async {
    var url = 'http://10.0.2.2:8000/api/v1/register';
    http.Response response = await http.post(url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: jsonEncode(<String, String>{
          'name': name,
          'email': studentEmail,
          'student_id': studentId,
          'password': password,
          'device_name': 'test mobile'
        }));
    if (response.statusCode == 200) {
      navigateToHome(context);
      //return json.decode(response.body);
    } else {
      setState(() {
        this.randomtext = 'Registration failed!';
      });
      //return json.decode(response.body);
    }
  }
}
