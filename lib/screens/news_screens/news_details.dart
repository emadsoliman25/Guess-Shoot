import 'package:flutter/material.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class NewsDetails extends StatefulWidget {
  @override
  _NewsDetailsState createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
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
        title: "News Details",
        color: Colors.amber[700],
      ),
    );
  }

  Widget _drawBody(){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            _drawHeader(),
            SizedBox(
              height: 10,
            ),
            drawSingleText(
              title:
              "Association football, more commonly known as football or soccer",
              color: Colors.white,
              fontSize: 20,
            ),
            SizedBox(
              height: 20,
            ),
            drawSingleText(
              title: "17 - 9 - 2018",
              color: Colors.white,
              fontSize: 14,
            ),
            SizedBox(
              height: 20,
            ),
            drawSingleText(
              title:
              "A mobile application, also referred to as a mobile app or simply an app, is a computer program or software application designed to run on a mobile device such as a phone, tablet, or watch",
              color: Colors.white,
              fontSize: 14,
            ),
            SizedBox(
              height: 10,
            ),
            drawSingleText(
              title:
              "A mobile application, also referred to as a mobile app or simply an app, is a computer program or software application designed to run on a mobile device such as a phone, tablet, or watch",
              color: Colors.white,
              fontSize: 14,
            ),
            SizedBox(
              height: 10,
            ),
            drawSingleText(
              title:
              "A mobile application, also referred to as a mobile app or simply an app, is a computer program or software application designed to run on a mobile device such as a phone, tablet, or watch",
              color: Colors.white,
              fontSize: 14,
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawHeader() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return;
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: ExactAssetImage('assets/images/ronaldo.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
