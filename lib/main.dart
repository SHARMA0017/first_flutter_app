import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_login_app/screens/home_screen.dart';
import 'package:my_login_app/screens/login_screen.dart';
import 'package:my_login_app/screens/registration_screen.dart';
import 'package:my_login_app/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    initialRoute: 'splash',
    routes: {
      'login': (context) => LoginScreen(),
      'register': (context) => RegistrationScreen(),
      'homescreen': (context) => HomeScreen(),
      'splash': (context) => SplashScreen(),
    },
    debugShowCheckedModeBanner: false,
    title: 'SHARMA',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    //home:  LoginScreen(),
  ));
}
