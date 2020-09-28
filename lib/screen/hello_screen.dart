import 'package:flutter/material.dart';
import 'package:ugca_mobileapp/screen/signin_screen.dart';
import 'package:ugca_mobileapp/screen/singup_screen.dart';

class HelloScreen extends StatefulWidget {
  @override
  _HelloScreenState createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/2.jpg'),
                    fit: BoxFit.fill)),
            //color: Colors.blue,
            //height: 400.0,
            child: Column(
              children: <Widget>[
                Image(
                  image: ExactAssetImage('assets/images/logo_dark.png'),
                  width: 300,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Welcome to UGCA',
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'The best way to chat with your class mates and tutors',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      navigateToSignup(context);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff9599B3),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(80.0))),
                        //height: 100,
                        width: 400,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 40, bottom: 40),
                              child: Center(
                                  child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  navigateToSignin(context);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff241332),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(80))),
                                  //height: 50,
                                  width: 400,
                                  child: Center(
                                      child: Text(
                                    'Sign in',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  Future navigateToSignin(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SigninScreen()));
  }

  Future navigateToSignup(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignupScreen()));
  }
}
