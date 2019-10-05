import 'package:flutter/material.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return drawPageStack(
      backgroundAssets: 'assets/images/home.jpeg',
      appBar: _drawAppBar(),
      body: _drawBody(),
    );
  }

  Widget _drawBody(){
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        _drawAboutInfoList(),
      ],
    );
  }

  Widget _drawAppBar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: drawSingleText(
        title: "About App",
        color: Colors.amber[700],
      ),
    );
  }

  Widget _drawAboutInfoList() {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.radio_button_checked,
                    color: Colors.amber[700],
                    size: 12,
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: drawSingleText(
                      title:
                          "As an app advertiser want to get your app and",
                      color: Colors.amber[700],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: drawSingleText(
                  title:
                      "A mobile application, also referred to as a mobile app or simply an app, is a computer program or software application designed to run on a mobile device such as a phone, tablet, or watch",
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
      itemCount: 4,
    );
  }
}
