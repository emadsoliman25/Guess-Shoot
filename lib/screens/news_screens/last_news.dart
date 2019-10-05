import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/news_screens/news_details.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class LastNews extends StatefulWidget {
  @override
  _LastNewsState createState() => _LastNewsState();
}

class _LastNewsState extends State<LastNews> {
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
        title: "News",
        color: Colors.amber[700],
      ),
    );
  }

  Widget _drawBody(){
    return ListView.builder(
      itemBuilder: (context, position) {
        return _drawHeader();
      },
      itemCount: 5,
    );
  }

  Widget _drawHeader() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsDetails();
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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      drawSingleText(
                        title:
                            "Association football, more commonly known as football or soccer,",
                        textAlign: TextAlign.center,
                        color: Colors.amber[700],
                        fontSize: 18,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      drawSingleText(
                        title:
                            'Association football, more commonly known as football or soccer, is a team sport played with a spherical ball between two teams of eleven players.',
                        textAlign: TextAlign.center,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
