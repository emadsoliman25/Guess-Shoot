import 'dart:io';
import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/expectations_app_bar_screens/edit_my_password.dart';
import 'package:guess_shoot/screens/expectations_app_bar_screens/my_account.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';
import 'package:image_picker/image_picker.dart';

class EditMyAccount extends StatefulWidget {
  @override
  _EditMyAccountState createState() => _EditMyAccountState();
}

class _EditMyAccountState extends State<EditMyAccount> {
  // ignore: unused_field
  File _image;
  @override
  Widget build(BuildContext context) {
    return drawPageStack(
      backgroundAssets: 'assets/images/home.jpeg',
      appBar: _drawAppBar(),
      body: _drawBody(),
    );
  }

  Widget _drawBody(){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _drawHeader(),
          SizedBox(height: 60,),
          Align(
            alignment: Alignment.bottomCenter,
            child: drawInkWellButton(
              title: "Confirm",
              fontSize: 24,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyAccount();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawAppBar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: drawSingleText(
        title: "Edit My Account",
        color: Colors.amber[700],
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
            child: Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                onPressed: (){
                  _settingModalBottomSheet(context);
                },
                  icon: Icon(Icons.edit,color: Colors.white,
                    size: 18,),
                ),

            ),
          ),

          _drawFormField(),
        ],
      ),
    );
  }

  Widget _drawFormField() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        child: Column(
          children: <Widget>[
            drawSingleTextFormField(
              labelText: 'Name',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
              icon: Icons.perm_identity,
              keyboardType: TextInputType.text,
              secure: false,
              maxLines: 1,
              validatorWarning: "Name Required",
            ),
            SizedBox(
              height: 20,
            ),
            drawSingleTextFormField(
              labelText: 'Email Address',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
              icon: Icons.email,
              keyboardType: TextInputType.emailAddress,
              secure: false,
              maxLines: 1,
              validatorWarning: "Email Required",
            ),
            SizedBox(
              height: 20,
            ),
            drawSingleTextFormField(
              labelText: 'Mobile Number',
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
              icon: Icons.phone,
              keyboardType: TextInputType.phone,
              secure: false,
              maxLines: 1,
              validatorWarning: "Mobile Number Required",
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.lock,color: Colors.white,),
                    SizedBox(width: 10,),
                    drawSingleText(
                      title: "Password",
                      color: Colors.white,
                    ),
                  ],
                ),
                IconButton(icon: Icon(Icons.edit,color: Colors.white,),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return EditMyPassword();
                  }));
                },),
              ],
            ),
            SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }

  Future _getImageFromCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);


    setState(() {
      _image = image;
    });
  }
  Future _getImageFromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);


    setState(() {
      _image = image;
    });
  }
  void _settingModalBottomSheet(context){
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext buildContext){
          return Container(
            child:  Wrap(
              children: <Widget>[
                ListTile(
                    leading:  Icon(Icons.camera_alt,color: Colors.white,),
                    title:  drawSingleText(
                      title: 'Camera',
                      color: Colors.white,
                    ),
                    onTap: () => {
                      _getImageFromCamera(),
                      Navigator.pop(context),
                    }
                ),
                ListTile(
                  leading:  Icon(Icons.image,color: Colors.white,),
                  title: drawSingleText(
          title: 'Gallery',
          color: Colors.white,
          ),
                  onTap: () => {
                    _getImageFromGallery(),
                    Navigator.pop(context),
                  },
                ),
              ],
            ),
          );
        }
    );
  }
}
