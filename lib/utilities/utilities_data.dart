import 'package:flutter/material.dart';

Widget drawSingleTextFormField({
  TextEditingController controller,
  String labelText,
  String validatorWarning,
  String hintText,
  TextStyle labelStyle,
  TextStyle hintStyle,
  TextAlign textAlign,
  IconData icon,
  TextInputType keyboardType,
  bool secure,
  int maxLines,
}) {
  return TextFormField(
    textAlign: textAlign,
      style: TextStyle(
      color: Colors.white),
    keyboardType: keyboardType,
    controller: controller,
    decoration: InputDecoration(
      border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      hintText: hintText,
      hintStyle: hintStyle,
      labelText: labelText,
      labelStyle: labelStyle,
      prefixIcon: Icon(icon,color: Colors.white,),
      filled: true,
    ),
    obscureText: secure,
    maxLines: maxLines,
    validator: (value) {
      if (value.isEmpty) {
        return validatorWarning;
      }
      return null;
    },
  );
}

Widget drawInkWellButton({String title, double fontSize, void onTap()}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Container(
        padding: EdgeInsets.only(
          left: 100,
          right: 100,
          top: 12,
          bottom: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromRGBO(254, 145, 0, 20),
              Color.fromRGBO(234, 187, 39, 20),
              Color.fromRGBO(254, 145, 0, 20),
            ],
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: fontSize,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      onTap: onTap,
    ),
  );
}

Widget drawSingleText({String title, double fontSize, Color color,TextAlign textAlign, FontWeight fontWeight,TextStyle textStyle}) {
  return Text(
    title,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
    textAlign: textAlign,
  );
}



Widget drawPageStack({Widget body, Widget bottomNavigationBar, Widget drawer, Widget appBar, String backgroundAssets}){
  return Stack(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage(backgroundAssets),
              fit: BoxFit.cover),
        ),
      ),
      Scaffold(
        drawer: drawer,
        appBar: appBar,
        backgroundColor: Colors.transparent,
        bottomNavigationBar: bottomNavigationBar,
        body: body,
      ),
    ],
  );
}