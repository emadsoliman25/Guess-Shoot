import 'package:flutter/material.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class ReportsAndSuggestion extends StatefulWidget {
  @override
  _ReportsAndSuggestionState createState() => _ReportsAndSuggestionState();
}

class _ReportsAndSuggestionState extends State<ReportsAndSuggestion> {
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
        title: "Reports & Suggestion",
        color: Colors.amber[700],
      ),
    );
  }

  Widget _drawBody(){
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        _drawFormField(),
        Align(
          alignment: Alignment.bottomCenter,
          child: drawInkWellButton(
            title: "Send",
            fontSize: 24,
            onTap: () {
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
              labelText: 'Reports & Suggestion Title EL',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
              keyboardType: TextInputType.text,
              secure: false,
              validatorWarning: "Reports & Suggestion Title EL Required",
            ),
            SizedBox(
              height: 20,
            ),
            drawSingleTextFormField(
              labelText: 'Reports & Suggestion Content',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
              keyboardType: TextInputType.text,
              secure: false,
              validatorWarning: "Reports & Suggestion Content Required",
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
