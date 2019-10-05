import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/register_screens/insert_new_password.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

import 'edit_mobile_number.dart';

class VerifyForgetPassword extends StatefulWidget {
  @override
  _VerifyForgetPasswordState createState() => _VerifyForgetPasswordState();
}

class _VerifyForgetPasswordState extends State<VerifyForgetPassword> {
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
                  title: "Please, Insert The Code That Sent On Your Mobile",
                  fontSize: 18,
                  textAlign: TextAlign.center,
                  color: Colors.white70,
                ),
                SizedBox(
                  height: 40,
                ),
                drawSingleText(
                  title: "01021147230",
                  fontSize: 16,
                  textAlign: TextAlign.center,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return EditMobileNumber();
                    }));
                  },
                  child: drawSingleText(
                    title: "Edit Mobile Number",
                    fontSize: 18,
                    textAlign: TextAlign.center,
                    color: Color.fromRGBO(254, 145, 0, 20),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                drawSingleTextFormField(
                  labelText: 'Verification Code',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.start,
                  icon: Icons.lock,
                  keyboardType: TextInputType.text,
                  secure: false,
                  maxLines: 1,
                  validatorWarning: "Verify Code Required",
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
                      return InsertNewPassword();
                    }));
              },
            ),
          ),
        ),
      ],
    );
  }
}
