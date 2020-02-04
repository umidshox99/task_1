import 'package:flutter/material.dart';
import 'package:task_1/presentation/screens/home.dart';
import 'package:task_1/presentation/screens/sign_in.dart';
import 'package:task_1/presentation/screens/sign_up.dart';
import 'package:task_1/presentation/screens/slpash_screen.dart';
import 'package:task_1/presentation/screens/verify_page.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/verify': (context) => VerifyPage(),
        '/home': (context) => Home(),
        '/sign_in': (context) => SignIn(),
        '/sign_up': (context) => SignUp(),
      },
      theme: ThemeData(
          primaryColor: Colors.purpleAccent, accentColor: Colors.purpleAccent),
      debugShowCheckedModeBanner: false,
    ));
