import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/room_screens/my_room.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class PublicRoom extends StatefulWidget {
  @override
  _PublicRoomState createState() => _PublicRoomState();
}

enum Ranking {
  Daily,
  Weekly,
  Monthly,
}

class _PublicRoomState extends State<PublicRoom> {
  Ranking _character = Ranking.Daily;

  @override
  Widget build(BuildContext context) {
    return drawPageStack(
      backgroundAssets: 'assets/images/home.jpeg',
      appBar: _drawAppBar(),
      body: ListView(
        children: <Widget>[
          _drawHeader(),
        ],
      ),
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
            title: "Champion's Room",
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
              title: "Request To Join",
              color: Colors.white,
            ),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.white70),
            ),
            onPressed: () {},
          ),
          SizedBox(
            height: 5,
          ),
          _drawFirstCard(),
          _drawSecondCard(),
          _drawThirdCard(),
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

  Widget _drawFirstCard() {
    return Card(
      color: Colors.transparent,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                drawSingleText(
                  title: "Number of subscribers",
                  fontSize: 12,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                drawSingleText(
                  title: "200",
                  fontSize: 12,
                  color: Colors.amber[700],
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: <Widget>[
                drawSingleText(
                  title: "Total Points",
                  fontSize: 12,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                drawSingleText(
                  title: "20000",
                  fontSize: 12,
                  color: Colors.amber[700],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawSecondCard() {
    return Card(
      color: Colors.transparent,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            drawSingleText(
              title: "TUS 17-9-2019",
              fontSize: 12,
              color: Colors.blueGrey,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.blueGrey,
                  size: 12,
                ),
                SizedBox(
                  width: 10,
                ),
                drawSingleText(
                  title: "MON 17 - 9 - 2019",
                  fontSize: 15,
                  color: Colors.amber[700],
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blueGrey,
                  size: 12,
                ),
              ],
            ),
            drawSingleText(
              title: "SUT 17-9-2019",
              fontSize: 12,
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawThirdCard() {
    return Card(
      color: Colors.transparent,
      elevation: 2,
      child: _drawRankingList(),
    );
  }

  Widget _drawRankingList() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.365,
      child: ListView.builder(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        drawSingleText(
                          title: (position + 1).toString(),
                          color: Colors.white,
                          fontSize: 16,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              ExactAssetImage('assets/images/e.jpg'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        drawSingleText(
                          title: "Emad Soliman",
                          color: Colors.white,
                          fontSize: 16,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: <Widget>[
                        drawSingleText(
                          title: "150 Points",
                          color: Colors.amber[700],
                          fontSize: 16,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
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
        itemCount: 6,
      ),
    );
  }

  Widget _drawSingleListTileRadioButton({Ranking value, String title}) {
    return ListTile(
      title: drawSingleText(
        title: title,
        fontSize: 20,
        color: Colors.white,
      ),
      leading: Radio(
        value: value,
        groupValue: _character,
        onChanged: (Ranking value) {
          setState(() {
            _character = value;
            Navigator.pop(context);
          });
        },
      ),
    );
  }

  Widget _drawAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Text("Champion's Room"),
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          top: 8,
          bottom: 4,
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyRoom();
            }));
          },
          child: CircleAvatar(
            backgroundImage: ExactAssetImage('assets/images/e.jpg'),
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.style,
            color: Colors.amber[700],
          ),
          onPressed: () {
            showDialog<String>(
                context: context,
                builder: (BuildContext context) => SimpleDialog(
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Colors.indigo,
                  title: Align(
                    alignment: Alignment.center,
                    child: drawSingleText(
                      title: "Sort By",
                      color: Colors.amber[700],
                      fontSize: 18,
                    ),
                  ),
                  children: <Widget>[
                    _drawSingleListTileRadioButton(
                      title: 'Daily Ranking',
                      value: Ranking.Daily,
                    ),
                    _drawSingleListTileRadioButton(
                      title: 'Weekly Ranking',
                      value: Ranking.Weekly,
                    ),
                    _drawSingleListTileRadioButton(
                      title: 'Monthly Ranking',
                      value: Ranking.Monthly,
                    ),
                  ],
                ));
          },
        ),
      ],
    );
  }
}
