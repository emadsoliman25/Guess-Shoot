import 'package:flutter/material.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
      title: Text("Notifications"),
    );
  }

  Widget _drawBody(){
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          color: Colors.transparent,
          elevation: 10,
          child: Stack(
            children: <Widget>[
              _drawSingleRow(),
            ],
          ),
        );
      },
      itemCount: 5,
    );
  }

  Widget _drawSingleRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              drawSingleText(
                title: "17-9-2019",
                fontSize: 12,
                color: Colors.grey,
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: ExactAssetImage('assets/images/9.png'),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: drawSingleText(
                  title: "Matchguess is a social prediction application on football matches.",
                  fontSize: 14,
                  color: Colors.white,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
