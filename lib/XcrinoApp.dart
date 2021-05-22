import 'package:flutter/material.dart';
import 'package:xcrino_flutter_app/WelcomePage2.dart';
import 'package:xcrino_flutter_app/welcomePage.dart';

class XcrinoApp extends StatelessWidget {
  const XcrinoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body : WelcomePage(),
        // WelcomePageSecond(),
      ),
    );
  }
}
