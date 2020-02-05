import 'package:flutter/material.dart';
import 'package:task_1/presentation/screens/about_screen.dart';
import 'package:task_1/presentation/screens/home_screen.dart';
import 'package:task_1/presentation/screens/sign_in_screen.dart';
import 'package:task_1/presentation/screens/sign_up_screen.dart';
import 'package:task_1/presentation/screens/slpash_screen.dart';
import 'package:task_1/presentation/screens/verify_screen.dart';
import 'package:task_1/utils/utils.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/verify': (context) => VerifyPage(),
        '/home': (context) => Home(),
        '/sign_in': (context) => SignIn(),
        '/sign_up': (context) => SignUp(),
        '/about': (context) => AboutScreen(),
      },
      theme: ThemeData(
          primaryColor: primaryColor,
          accentColor: accentColor,
          brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
    ));
