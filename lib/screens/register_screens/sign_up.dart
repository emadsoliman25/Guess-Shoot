import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/register_screens/verify_account.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _checkBoxVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _drawBody(),
    );
  }

  Widget _drawBody(){
    return Stack(
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
            padding: const EdgeInsets.only(
              top: 46,
              left: 12,
              right: 12,
              bottom: 12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                _drawFormField(),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: drawInkWellButton(
            title: "Sign Up",
            fontSize: 24,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return VerifyAccount();
              }));
            },
          ),
        ),
      ],
    );
  }

  Widget _drawFormField() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        child: Column(
          children: <Widget>[
            drawSingleTextFormField(
              labelText: 'Name',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
              icon: Icons.perm_identity,
              keyboardType: TextInputType.text,
              secure: false,
              maxLines: 1,
              validatorWarning: "Name Required",
            ),
            SizedBox(
              height: 20,
            ),
            drawSingleTextFormField(
              labelText: 'Email Address',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
              icon: Icons.email,
              keyboardType: TextInputType.emailAddress,
              secure: false,
              maxLines: 1,
              validatorWarning: "Email Required",
            ),
            SizedBox(
              height: 20,
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
              height: 20,
            ),
            drawSingleTextFormField(
              labelText: 'Password',
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
              labelText: 'Confirm Password',
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
            _drawAgreeRulesRow(),
            SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }

  Widget _drawAgreeRulesRow() {
    return CheckboxListTile(
      onChanged: (bool value) {
        setState(
          () {
            return this._checkBoxVal = value;
          },
        );
      },
      value: this._checkBoxVal,
      title: Text("I Agree To The Terms And Conditions",style: TextStyle(color: Colors.white,fontSize: 13,),),
      activeColor: Color.fromRGBO(254, 145, 0, 20),
      dense: true,
    );
  }
}
