import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/home_screen.dart';
import 'package:guess_shoot/screens/register_screens/forget_password.dart';
import 'package:guess_shoot/screens/register_screens/sign_up.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            padding: const EdgeInsets.only(top: 46,left: 12,right: 12,bottom: 12,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Sign In",
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
              labelText: 'password',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
              icon: Icons.lock,
              keyboardType: TextInputType.text,
              secure: true,
              maxLines: 1,
              validatorWarning: "password Required",
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ForgetPassword();
                }));
              },
              child: Align(
                alignment: Alignment.topRight,
                child: drawSingleText(
                  title: "Forget Password?",
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  drawInkWellButton(
                    title: "Sign In",
                    fontSize: 24,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomeScreen();
                      }));
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  drawSingleText(
                    title: "OR",
                    fontSize: 17,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  drawSingleText(
                    title: "You Can Create A New Acount Now!",
                    fontSize: 17,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  drawInkWellButton(
                    title: "Sign Up",
                    fontSize: 24,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SignUp();
                      }));
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomeScreen();
                      }));
                    },
                    child: drawSingleText(
                      title: "Enter As A Visitor",
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
