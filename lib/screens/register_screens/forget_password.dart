import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/register_screens/verify_forget_password.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                  title: "Please, Insert Your  Mobile Number",
                  fontSize: 18,
                  textAlign: TextAlign.center,
                  color: Colors.white70,
                ),
                SizedBox(
                  height: 120,
                ),
                drawSingleTextFormField(
                  labelText: 'Mobile Number',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.start,
                  icon: Icons.phone,
                  keyboardType: TextInputType.phone,
                  secure: false,
                  maxLines: 1,
                  validatorWarning: "Mobile Number Required",
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20,),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: drawInkWellButton(
              title: "Submit",
              fontSize: 24,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return VerifyForgetPassword();
                    }));
              },
            ),
          ),
        ),
      ],
    );
  }
}
