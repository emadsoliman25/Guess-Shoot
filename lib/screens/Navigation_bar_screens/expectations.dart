import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/expectations_app_bar_screens/my_account.dart';
import 'package:guess_shoot/screens/expectations_app_bar_screens/notifications.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';
import 'package:numberpicker/numberpicker.dart';

class Expectations extends StatefulWidget {
  @override
  _ExpectationsState createState() => _ExpectationsState();
}

class _ExpectationsState extends State<Expectations> {
  int _currentValue1 ;
  int _currentValue2 ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentValue1 = 0;
    _currentValue2 = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _drawAppBar(),
      body: _drawBody(),
    );
  }

  Widget _drawBody(){
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          color: Colors.transparent,
          elevation: 10,
          child: Column(
            children: <Widget>[
              _drawSingleRow(),
              _drawRaisedButton(),
              SizedBox(height: 10,),
            ],
          ),
        );
      },
      itemCount: 5,
    );
  }

  Widget _drawAppBar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: drawSingleText(
        title: "Expectations",
      ),
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          top: 8,
          bottom: 4,
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyAccount();
            }));
          },
          child: CircleAvatar(
            backgroundImage: ExactAssetImage('assets/images/e.jpg'),
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Notifications();
            }));
          },
        ),
      ],
    );
  }

  Widget _drawRaisedButton(){
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: RaisedButton(
        shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Colors.amber[700],
        child: drawSingleText(
          title: "SHOOT",
          color: Colors.white,
          fontSize: 16,
        ),
        onPressed: () {
          _expectationModalBottomSheet(context);
        },
      ),
    );
  }

  Widget _drawSingleRow() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _drawClubColumn(
              assets: 'assets/images/7.png',
              clubName: "Man City",
              score: _currentValue1.toString(),
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
                _drawRewardsIcon(),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            _drawClubColumn(
              assets: 'assets/images/6.png',
              clubName: "Liverpool",
              score: _currentValue2.toString(),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _drawClubColumn({String assets, String clubName, String score}){
    return Column(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: ExactAssetImage(assets),
        ),
        SizedBox(
          height: 5,
        ),
        drawSingleText(
          title: clubName,
          color: Colors.white,
          fontSize: 16,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        drawSingleText(
          title: score,
          color: Colors.white,
          fontSize: 16,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _drawRewardsIcon() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Align(
        alignment: Alignment.topRight,
        child: GestureDetector(
          onTap: () {
            showDialog<String>(
                context: context,
                builder: (BuildContext context) => SimpleDialog(
                      shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.indigo,
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 18,
                            backgroundImage:
                                ExactAssetImage("assets/images/prize.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          drawSingleText(
                            title: "Rewards",
                            color: Colors.amber[700],
                            fontSize: 15,
                          ),
                        ],
                      ),
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                drawSingleText(
                                  title: "3 Points / ",
                                  color: Colors.white,
                                  fontSize: 18,
                                  textAlign: TextAlign.center,
                                ),
                                drawSingleText(
                                  title: "All Winners",
                                  color: Colors.white,
                                  fontSize: 12,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            drawSingleText(
                              title: "&",
                              color: Colors.white,
                              fontSize: 18,
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.attach_money,
                                  color: Colors.white,
                                ),
                                drawSingleText(
                                  title: " 20 / ",
                                  color: Colors.white,
                                  fontSize: 18,
                                  textAlign: TextAlign.center,
                                ),
                                drawSingleText(
                                  title: "1 Winners",
                                  color: Colors.white,
                                  fontSize: 12,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 11,
                backgroundImage: ExactAssetImage("assets/images/prize.png"),
              ),
              SizedBox(
                height: 5,
              ),
              drawSingleText(
                title: "Rewards",
                color: Colors.white,
                fontSize: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _expectationModalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Color.fromRGBO(16, 30, 69, 80),
        context: context,
        builder: (BuildContext buildContext) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                drawSingleText(
                  title: "Please Insert Your Expectation",
                  fontSize: 17,
                  color: Colors.amber[700],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        Theme(
                          data: Theme.of(context).copyWith(
                            accentColor: Colors.amber[700],
                            textTheme: TextTheme(
                              body1: TextStyle(color: Colors.white),
                            ),
                          ),
                          child: NumberPicker.integer(
                              initialValue: _currentValue1,
                              minValue: 0,
                              maxValue: 100,
                              onChanged: (newValue) =>
                                  setState(() => _currentValue1 = newValue)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
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
                        Theme(
                          data: Theme.of(context).copyWith(
                            accentColor: Colors.amber[700],
                            textTheme: TextTheme(
                              body1: TextStyle(color: Colors.white),
                            ),
                          ),
                          child: NumberPicker.integer(
                              initialValue: _currentValue2,
                              minValue: 0,
                              maxValue: 100,
                              onChanged: (newValue) =>
                                  setState(() => _currentValue2 = newValue)),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(icon: Icon(Icons.check,color: Colors.amber[700],size: 44,), onPressed: (){
                  Navigator.pop(context);
                },),
              ],
            ),
          );
        });
  }
}
