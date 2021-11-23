import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_login_app/model/user_model.dart';
import 'package:my_login_app/screens/home_screen.dart';
import 'package:my_login_app/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';

final user = FirebaseAuth.instance.currentUser;
class SplashScreen extends StatefulWidget {
  @override

  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/logo.png"),
              fit: BoxFit.contain),
        ),
      ),
    );
  }

   void startTimer() {
    Timer(Duration(seconds: 1), () {
      navigateUser(); //It will redirect  after 3 seconds
    });
  }

    void navigateUser() async{
    print(user);
    if (user != null) {
      Navigator.pushReplacementNamed(context, 'homescreen');
    } else {
      Navigator.pushReplacementNamed(context, 'login');
    }
  }
}