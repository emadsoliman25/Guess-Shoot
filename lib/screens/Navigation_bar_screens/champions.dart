import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/room_screens/public_room.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class Champions extends StatefulWidget {
  @override
  _ChampionsState createState() => _ChampionsState();
}

class _ChampionsState extends State<Champions> {
  static List<String> imagesAssets = [
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/10.png',
    'assets/images/11.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _drawAppBar(),
      body: _drawBody(),
    );
  }

  Widget _drawAppBar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: drawSingleText(
        title: "Champions",
        color: Colors.amber[700],
      ),
      leading: Container(),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.public,
            color: Colors.amber[700],
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PublicRoom();
            }));
          },
        ),
      ],
    );
  }

  Widget _drawBody(){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Card(
            color: Colors.transparent,
            elevation: 2,
            child: ExpansionTile(
              title: _drawSingleCard(
                  "English Premier League", 'assets/images/12.png'),
              children: <Widget>[
                drawSingleText(
                  title: "Please Choose Only One Club For The Champion",
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _drawClubsList(context, imagesAssets),
                    _drawClubsList(context, imagesAssets),
                  ],
                ),
              ],
            ),
          ),
          Card(
            color: Colors.transparent,
            elevation: 2,
            child: ExpansionTile(
              title: _drawSingleCard("LA LIGA", 'assets/images/13.jpg'),
              children: <Widget>[
                drawSingleText(
                  title: "Please Choose Only One Club For The Champion",
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    _drawClubList(context, imagesAssets),
                    //_drawClubsList(context, imagesAssets),
                  ],
                ),
              ],
            ),
          ),
          Card(
            color: Colors.transparent,
            elevation: 2,
            child: ExpansionTile(
              title: _drawSingleCard("BUNDES LIGA", 'assets/images/14.jpeg'),
              children: <Widget>[
                drawSingleText(
                  title: "Please Choose Only One Club For The Champion",
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _drawClubsList(context, imagesAssets),
                    _drawClubsList(context, imagesAssets),
                  ],
                ),
              ],
            ),
          ),
          Card(
            color: Colors.transparent,
            elevation: 2,
            child: ExpansionTile(
              title: _drawSingleCard("Serie A", 'assets/images/15.png'),
              children: <Widget>[
                drawSingleText(
                  title: "Please Choose Only One Club For The Champion",
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _drawClubsList(context, imagesAssets),
                    _drawClubsList(context, imagesAssets),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawSingleCard(String title, String assets) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: ExactAssetImage(assets),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                width: 10,
              ),
              drawSingleText(
                title: title,
                fontSize: 17,
                color: Colors.white,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Column(
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
            ],
          ),
        ],
      ),
    );
  }
  ///Draw Clubs List By List View List///
  Widget _drawClubsList(BuildContext context, List<String> imagesAssets) {
    return Container(
      padding: EdgeInsets.only(left: 48),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.1,
      child: ListView.builder(
        itemBuilder: (context, position) {
          return Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: ExactAssetImage(imagesAssets[position]),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                width: 30,
              ),
            ],
          );
        },
        itemCount: imagesAssets.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
  ///Draw Clubs List By GridView List///
Widget _drawClubList(BuildContext context, List<String> imagesAssets) {
  return Container(
    padding: EdgeInsets.only(left:32 ),
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.25,
    child: GridView.builder(
      itemCount: imagesAssets.length,
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, position) {
        return Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: ExactAssetImage(imagesAssets[position]),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(
              width: 30,
            ),
          ],
        );
      },
    ),
  );
}
