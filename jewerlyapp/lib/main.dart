import 'package:flutter/material.dart';
import 'package:jewerlyapp/constants.dart';
import 'package:jewerlyapp/homepage.dart';
import 'package:jewerlyapp/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YLC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: kbackgroundColor,
          //primary color
          primaryColor: kprimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: ktextColor),
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "Comfortaa"),
      home: SignupScreen(),
    );
  }
}
