import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/splach_screen/splach.dart';

void main() => runApp(GuessShoot());

class GuessShoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        unselectedWidgetColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
          iconTheme: IconThemeData(
            color: Colors.amber[700],
          ),
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.amber[700],
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        primaryColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
      home: SplashScreen(),
    );
  }
}


