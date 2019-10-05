import 'package:flutter/material.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class Ranking extends StatefulWidget {
  @override
  _RankingState createState() => _RankingState();
}

class _RankingState extends State<Ranking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _drawAppBar(),
      body: _drawBody(),
    );
  }

  Widget _drawAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: drawSingleText(
        title: "Ranking",
        color: Colors.amber[700],
      ),
      leading: Container(),
    );
  }

  Widget _drawBody() {
    return ListView(
      children: <Widget>[
        _drawFirstCard(),
        _drawSecondCard(),
        _drawChampionsList(),
        _drawThirdCard(),
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
      height: MediaQuery.of(context).size.height * 0.65,
      child: ListView.builder(
        itemBuilder: (context, position) {
          return Card(
            color: Colors.transparent,
            elevation: 10,
            margin: EdgeInsets.only(
              top: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    drawSingleText(
                      title: (position + 4).toString(),
                      color: Colors.white,
                      fontSize: 16,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: ExactAssetImage('assets/images/e.jpg'),
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
          );
        },
        itemCount: 12,
      ),
    );
  }

  Widget _drawChampionsList() {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemBuilder: (context, position) {
          return Stack(
            children: <Widget>[
              _drawChampionsColumn(),
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 4,),
                child: Image.asset(
                  'assets/images/cmonth.png',
                  alignment: Alignment.topRight,
                  width: 30,
                  height: 30,
                ),
              ),
            ],
          );
        },
        itemCount: 3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _drawChampionsColumn() {
    return Card(
      color: Colors.transparent,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: ExactAssetImage('assets/images/e.jpg'),
              radius: 32,
            ),
            SizedBox(
              height: 10,
            ),
            drawSingleText(
              title: "Emad Soliman",
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            drawSingleText(
              title: "150 Points",
              color: Colors.amber[700],
              fontSize: 15,
            ),
          ],
        ),
      ),
    );
  }
}
