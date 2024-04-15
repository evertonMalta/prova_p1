import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import './view/inital.dart';
import './view/createAccount.dart';
import './view/login.dart';
import './view/about.dart';
import './view/mainList.dart';
import './view/itenList.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InitialScreen(),
        '/createAccount': (context) => CreateAccountScreen(),
        '/login': (context) => LoginScreen(),
        '/about': (context) => AboutScreen(),
      },
    );
  }
}
