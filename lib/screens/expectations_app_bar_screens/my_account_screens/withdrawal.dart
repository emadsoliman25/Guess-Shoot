import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/expectations_app_bar_screens/my_account_screens/withdrawal_screens/neteller_info.dart';
import 'package:guess_shoot/screens/expectations_app_bar_screens/my_account_screens/withdrawal_screens/paypal_info.dart';
import 'package:guess_shoot/screens/expectations_app_bar_screens/my_account_screens/withdrawal_screens/visa_info.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class Withdrawal extends StatefulWidget {
  @override
  _WithdrawalState createState() => _WithdrawalState();
}

enum PaymentCharacter {
  PayPal,
  NETELLER,
  VISA,
}

class _WithdrawalState extends State<Withdrawal> {
  PaymentCharacter _character = PaymentCharacter.PayPal;

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
        title: "Withdrawal",
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                drawSingleText(
                  title:
                  "Please, Choose Your Way To Receive Your Money On",
                  fontSize: 18,
                  textAlign: TextAlign.center,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 40,
                ),
                _drawSingleListTileRadioButton(
                  title: 'PayPal',
                  value: PaymentCharacter.PayPal,
                ),
                _drawSingleListTileRadioButton(
                  title: 'NETELLER',
                  value: PaymentCharacter.NETELLER,
                ),
                _drawSingleListTileRadioButton(
                  title: 'VISA',
                  value: PaymentCharacter.VISA,
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
                switch (_character) {
                  case PaymentCharacter.PayPal:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return PayPalInfo();
                        }));
                    break;
                  case PaymentCharacter.NETELLER:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return NetellerInfo();
                        }));
                    break;
                  case PaymentCharacter.VISA:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return VisaInfo();
                        }));
                    break;
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _drawSingleListTileRadioButton({PaymentCharacter value, String title}) {
    return ListTile(
      title: drawSingleText(
        title: title,
        fontSize: 20,
        color: Colors.indigo,
      ),
      leading: Radio(
        value: value,
        groupValue: _character,
        onChanged: (PaymentCharacter value) {
          setState(() {
            _character = value;
            Navigator.pop(context);
          });
        },
      ),
    );
  }
}

