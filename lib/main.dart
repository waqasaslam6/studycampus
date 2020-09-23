import 'package:flutter/material.dart';
import 'package:studycampus/Splash.dart';
import 'package:flutter/services.dart';
void main()
{
  runApp(MaterialApp(
    title: "Study Campus",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xff20c6ba),
    ),
    home: SplashScreen(),
  ));
}
