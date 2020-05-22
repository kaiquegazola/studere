import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studere/pages/login/login.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String splashText = "Estude";
  var textVector = ["Estuder", "Studer", "Studere"];

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 1000), () {
      nextAnimName();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                splashText,
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ]),
      ),
    );
  }

  void nextAnimName() {
    if (textVector.length > 0) {
      setState(() {
        splashText = textVector[0];
      });
      textVector.removeAt(0);
      Timer(Duration(milliseconds: 500), () {
        nextAnimName();
      });
    } else {
      Timer(Duration(milliseconds: 500), () {
        Get.to(LoginPage());
      });
    }
  }
}
