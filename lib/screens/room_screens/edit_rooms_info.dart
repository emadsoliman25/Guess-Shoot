import 'package:flutter/material.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class EditRoomsInfo extends StatefulWidget {
  @override
  _EditRoomsInfoState createState() => _EditRoomsInfoState();
}

class _EditRoomsInfoState extends State<EditRoomsInfo> {
  @override
  Widget build(BuildContext context) {
    return drawPageStack(
      backgroundAssets: 'assets/images/home.jpeg',
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: drawSingleText(
          title: "Edit Room's Info",
          color: Colors.amber[700],
        ),
      ),
      body: _drawBody(),
    );
  }

  Widget _drawBody(){
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/images/e.jpg'),
                  radius: 44,
                ),
                SizedBox(
                  height: 120,
                ),
                drawSingleTextFormField(
                  labelText: "Champion's Room",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.phone,
                  secure: false,
                  maxLines: 1,
                  validatorWarning: "Champion's Room Required",
                ),
                SizedBox(
                  height: 10,
                ),
                drawSingleTextFormField(
                  labelText: "محمد مصطفي - فهد عبدالله - محمد مصطفي",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.start,
                  icon: Icons.add,
                  keyboardType: TextInputType.phone,
                  secure: false,
                  maxLines: 1,
                  validatorWarning: "Add Members Required",
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: drawInkWellButton(
              title: "Save Edit",
              fontSize: 24,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return;
                }));
              },
            ),
          ),
        ),
      ],
    );
  }
}
