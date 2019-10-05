import 'package:flutter/material.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class EditMyPassword extends StatefulWidget {
  @override
  _EditMyPasswordState createState() => _EditMyPasswordState();
}

class _EditMyPasswordState extends State<EditMyPassword> {
  @override
  Widget build(BuildContext context) {
    return drawPageStack(
      backgroundAssets: 'assets/images/home.jpeg',
      appBar: _drawAppBar(),
      body: _drawBody(),
    );
  }

  Widget _drawAppBar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: drawSingleText(
        title: "Edit My Password",
        color: Colors.amber[700],
      ),
    );
  }

  Widget _drawBody(){
    return Stack(
      children: <Widget>[
        _drawFormField(),
        Align(
          alignment: Alignment.bottomCenter,
          child: drawInkWellButton(
            title: "Confirm",
            fontSize: 24,
            onTap: () {
              Navigator.pop(context);
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
              labelText: 'Current Password',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
              icon: Icons.lock,
              keyboardType: TextInputType.text,
              secure: true,
              maxLines: 1,
              validatorWarning: "Current Password Required",
            ),
            SizedBox(
              height: 20,
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
              validatorWarning: "New Password Required",
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
              validatorWarning: "Confirm New Password Required",
            ),
            SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}
