import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/expectations_app_bar_screens/my_account.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class VisaInfo extends StatefulWidget {
  @override
  _VisaInfoState createState() => _VisaInfoState();
}

class _VisaInfoState extends State<VisaInfo> {
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
        title: "VISA Info",
        color: Colors.amber[700],
      ),
    );
  }

  Widget _drawBody(){
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                drawSingleText(
                  title: "Please Insert Your Visa ID",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 120,
                ),
                drawSingleTextFormField(
                  labelText: 'Email Address',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.start,
                  icon: Icons.email,
                  keyboardType: TextInputType.phone,
                  secure: false,
                  maxLines: 1,
                  validatorWarning: "Email Address Required",
                ),
                SizedBox(
                  height: 40,
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
              title: "Send",
              fontSize: 24,
              onTap: () {
                _drawShowDialog();
              },
            ),
          ),
        ),
      ],
    );
  }

  _drawShowDialog(){
    return showDialog<String>(
        context: context,
        builder: (BuildContext context) => SimpleDialog(
          shape: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)),
          backgroundColor: Colors.indigo,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  drawSingleText(
                    title:
                    "Your Money Will Be Sent To Your PayPal Account",
                    color: Colors.white,
                    fontSize: 18,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  drawSingleText(
                    title: "Your Money Amount Is",
                    color: Colors.white,
                    fontSize: 18,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.attach_money,
                        color: Colors.white,
                      ),
                      drawSingleText(
                        title: " 200 ",
                        color: Colors.white,
                        fontSize: 24,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    shape: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                            Radius.circular(20))),
                    color: Colors.amber[700],
                    child: drawSingleText(
                      title: "Confirm",
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return MyAccount();
                          }));
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
