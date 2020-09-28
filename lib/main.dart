import 'package:flutter/material.dart';
import 'package:ugca_mobileapp/screen/chat_screen.dart';
import 'package:ugca_mobileapp/screen/hello_screen.dart';
import 'package:ugca_mobileapp/screen/home_screen.dart';
import 'package:ugca_mobileapp/screen/signin_screen.dart';
import 'package:ugca_mobileapp/screen/singup_screen.dart';
import 'package:ugca_mobileapp/screen/welcome_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UGCA App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff8A56AC),
        accentColor: Color(0xffF1F0F2),
      ),
      home:
          WelcomeScreen(),
          //HelloScreen(),
          //SignupScreen(),
          //SigninScreen(),
          //HomeScreen(),
          //ChatScreen(),
          //ChatPage(),
    );
  }
}



/* import 'package:flutter/material.dart';
import 'package:ugca_mobileapp/chatpage.dart';

void main() => runApp(MyMaterial());

class MyMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatPage(),
    );
  }
} */