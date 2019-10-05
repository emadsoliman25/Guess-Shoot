import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/home_screen.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class SuccessCreateAccount extends StatefulWidget {
  @override
  _SuccessCreateAccountState createState() => _SuccessCreateAccountState();
}

class _SuccessCreateAccountState extends State<SuccessCreateAccount> {
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
                    title: "Your Account Has Been Created Successfully",
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    textAlign: TextAlign.center),
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
              title: "Get Started",
              fontSize: 24,
              onTap: () {
                _settingModalBottomSheet(context);
              },
            ),
          ),
        ),
      ],
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext buildContext) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:
                                ExactAssetImage('assets/images/4.png'),
                          ),
                          drawSingleText(
                            title: "Pay",
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          drawSingleText(
                            title: "Payment Method Needed",
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          drawSingleText(
                            title: "Add Payment Method",
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          drawSingleText(
                            title: "example@gmail.com",
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      drawSingleText(
                        title:
                            "Payment method types. Credit Cards. As a global payment solution, credit cards are the most common way for customers to pay online. Mobile Payments. Bank Transfers. Ewallets. Prepaid Cards. Direct Deposit. Cash.",
                        color: Colors.grey,
                        fontSize: 12,
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                child: RaisedButton(
                  child: drawSingleText(
                    title: "Add Payment Method",
                    fontSize: 18,
                    color: Colors.white,
                    textAlign: TextAlign.center,
                  ),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomeScreen();
                    }));
                  },
                ),
              ),
            ],
          );
        });
  }
}
