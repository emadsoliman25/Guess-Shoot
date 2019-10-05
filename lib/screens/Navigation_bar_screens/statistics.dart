import 'package:flutter/material.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
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
      leading: Container(),
      backgroundColor: Colors.transparent,
      title: drawSingleText(
        title: "Statistics",
        color: Colors.amber[700],
      ),
    );
  }

  Widget _drawBody(){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _drawChampCard(
            "The Champion Of The Year",
            'assets/images/cyear.png',
          ),
          SizedBox(
            height: 10,
          ),
          _drawInfoColumn(),
          SizedBox(
            height: 10,
          ),
          _drawChampCard(
            "The Champion Of The Month",
            'assets/images/cmonth.png',
          ),
          SizedBox(
            height: 10,
          ),
          _drawInfoList(),
        ],
      ),
    );
  }

  Widget _drawChampCard(String title, String assets) {
    return Container(
      width: double.infinity,
      child: Card(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: drawSingleText(
                  title: title,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                child: Image.asset(assets),
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawInfoColumn() {
    return Column(
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
          title: "540 Points",
          color: Colors.amber[700],
          fontSize: 15,
        ),
        SizedBox(
          height: 10,
        ),
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
    );
  }

  Widget _drawInfoList() {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemBuilder: (context, position) {
          return Row(
            children: <Widget>[
              _drawInfoColumn(),
              SizedBox(width: 30,),
            ],
          );
        },
        itemCount: 3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
