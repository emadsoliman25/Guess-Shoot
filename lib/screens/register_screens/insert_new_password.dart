import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/register_screens/success_update_password.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class InsertNewPassword extends StatefulWidget {
  @override
  _InsertNewPasswordState createState() => _InsertNewPasswordState();
}

class _InsertNewPasswordState extends State<InsertNewPassword> {
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
                image: ExactAssetImage('assets/images/2.png'),
                fit: BoxFit.cover),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                drawSingleText(
                  title: "Forget Password",
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 40,
                ),
                drawSingleText(
                  title: "Please, Insert Your  New Password",
                  fontSize: 18,
                  textAlign: TextAlign.center,
                  color: Colors.white70,
                ),
                SizedBox(
                  height: 120,
                ),
                drawSingleTextFormField(
                  labelText: 'New Password',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.start,
                  icon: Icons.lock,
                  keyboardType: TextInputType.text,
                  secure: true,
                  maxLines: 1,
                  validatorWarning: "Password Required",
                ),
                SizedBox(
                  height: 20,
                ),
                drawSingleTextFormField(
                  labelText: 'Confirm New Password',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.start,
                  icon: Icons.lock,
                  keyboardType: TextInputType.text,
                  secure: true,
                  maxLines: 1,
                  validatorWarning: "Confirm Password Required",
                ),
                SizedBox(
                  height: 20,
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
              title: "Submit",
              fontSize: 24,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SuccessUpdatePassword();
                }));
              },
            ),
          ),
        ),
      ],
    );
  }
}
