import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/expectations_app_bar_screens/my_account_screens/edit_my_account.dart';
import 'package:guess_shoot/screens/expectations_app_bar_screens/my_account_screens/withdrawal.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {

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
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text("My account"),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.edit,color: Colors.amber[700],), onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return EditMyAccount();
              }));
        },),
      ],
    );
  }

  Widget _drawBody(){
    return ListView(
      children: <Widget>[
        _drawHeader(),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.42,
          child: _drawExpectationsList(),
        ),
      ],
    );
  }

  Widget _drawHeader() {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: ExactAssetImage('assets/images/e.jpg'),
            radius: 44,
          ),
          SizedBox(
            height: 10,
          ),
          drawSingleText(
            title: "Emad Soliman",
            color: Colors.amber[700],
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          _drawSingleRow(),
          SizedBox(
            height: 5,
          ),
          RaisedButton(
            color: Colors.transparent,
            elevation: 0,
            child: drawSingleText(
              title: "Withdrawal",
              color: Colors.white,
            ),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.white70),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return Withdrawal();
                  }));
            },
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: Colors.transparent,
              elevation: 1,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  drawSingleText(
                      title: "My Expectations",
                      fontSize: 17,
                      color: Colors.white,
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawSingleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            drawSingleText(
              title: "Total Points",
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            drawSingleText(
              title: "40",
              color: Colors.white,
              fontSize: 12,
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: 1,
          color: Colors.white70,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: <Widget>[
            drawSingleText(
              title: "Total Cach",
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.attach_money,
                  color: Colors.white,
                  size: 13,
                ),
                drawSingleText(
                  title: "200",
                  color: Colors.white,
                  fontSize: 12,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _drawExpectationsList() {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          color: Colors.transparent,
          elevation: 10,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            ExactAssetImage('assets/images/7.png'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      drawSingleText(
                        title: "Man City",
                        color: Colors.white,
                        fontSize: 16,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      drawSingleText(
                        title: '3',
                        color: Colors.white,
                        fontSize: 16,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      drawSingleText(
                        title: "English Premier League",
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      drawSingleText(
                        title: "Sunday 17-9-2019",
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      drawSingleText(
                        title: "9:30",
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      drawSingleText(
                        title: "Time Ended",
                        color: Colors.red,
                        fontSize: 12,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            ExactAssetImage('assets/images/6.png'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      drawSingleText(
                        title: "Liverpool",
                        color: Colors.white,
                        fontSize: 16,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      drawSingleText(
                        title: "4",
                        color: Colors.white,
                        fontSize: 16,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
      itemCount: 4,
    );
  }


}
