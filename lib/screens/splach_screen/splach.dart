import 'dart:async';
import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/register_screens/sign_in.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationScreen);
  }

  void navigationScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return SignIn();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/1.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ));
  }
}
