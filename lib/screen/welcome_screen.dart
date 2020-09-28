import 'package:flutter/material.dart';
import 'package:ugca_mobileapp/screen/hello_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          height: 500.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/images/1.jpg'),
                  fit: BoxFit.fitHeight),
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(80.0))),
          child: Image(
            image: ExactAssetImage('assets/images/logo_dark.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: <Widget>[
                Center(
                    child: Text('University Group Chst App',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 38, fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                    child: Text(
                        'By using this app you can enjoy more privacy and more learning with your mates',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        ))),
                SizedBox(
                  height: 10.0,
                ),
                FlatButton(
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {
                      navigateToHello(context);
                    },
                    child: Text('next', style: TextStyle(color: Colors.white)))
              ],
            ),
          ),
        )
      ],
    ));
  }

  Future navigateToHello(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HelloScreen()));
  }
}
