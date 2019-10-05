import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/home_screen.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class SuccessUpdatePassword extends StatefulWidget {
  @override
  _SuccessUpdatePasswordState createState() => _SuccessUpdatePasswordState();
}

class _SuccessUpdatePasswordState extends State<SuccessUpdatePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _drawBody(),
    );
  }

  Widget _drawBody(){
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/3.png'),
                fit: BoxFit.cover),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[

                drawSingleText(
                    title: "Your New Password Has Been Updated Successfully",
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    textAlign: TextAlign.center
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: drawInkWellButton(
              title: "Continue",
              fontSize: 24,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              },
            ),
          ),
        ),
      ],
    );
  }
}
