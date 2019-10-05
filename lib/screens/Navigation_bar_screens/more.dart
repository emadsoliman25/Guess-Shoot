import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/more_screens/about_app.dart';
import 'package:guess_shoot/screens/more_screens/privacy%20policy.dart';
import 'package:guess_shoot/screens/more_screens/reports_and_suggestion.dart';
import 'package:guess_shoot/screens/more_screens/terms_and_conditions.dart';
import 'package:guess_shoot/screens/news_screens/last_news.dart';
import 'package:guess_shoot/screens/register_screens/sign_in.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _drawAppBar(),
      body: _drawBody(),
    );
  }

  Widget _drawBody(){
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SingleChildScrollView(child: _drawListTile()),
      ],
    );
  }

  Widget _drawAppBar(){
    return AppBar(
      centerTitle: true,
      leading: Container(),
      backgroundColor: Colors.transparent,
      title: drawSingleText(
        title: "More",
        color: Colors.amber[700],
      ),
    );
  }

  Widget _drawListTileCard({Widget navigatorPage, String title, IconData icon}){
    return Card(
      color: Colors.transparent,
      elevation: 2,
      child: InkWell(
        onTap: () {
          // ignore: unnecessary_statements
          (title == "العربيه" || title == "Invite Friends" || title ==  "Share App")?  null :Navigator.push(context, MaterialPageRoute(builder: (context) {
            return navigatorPage;
          }));
        },
        child: ListTile(
          leading: Icon(
            icon,
            color: (title == "Sign Out")? Colors.red : Colors.white,
          ),
          title: drawSingleText(
            title: title,
            color: (title == "Sign Out")? Colors.red : Colors.white,
          ),
        ),
      ),
    );
  }


  Widget _drawListTile() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _drawListTileCard(
          title: "Last News",
          navigatorPage: LastNews(),
          icon: Icons.chrome_reader_mode,
        ),
        _drawListTileCard(
          title: "Invite Friends",
          icon: Icons.person_add,
        ),
        _drawListTileCard(
          title: "Terms And Conditions",
          navigatorPage: TermsAndConditions(),
          icon: Icons.description,
        ),
        _drawListTileCard(
          title: "Privacy Policy",
          navigatorPage: PrivacyPolicy(),
          icon: Icons.vpn_lock,
        ),
        _drawListTileCard(
          title: "Reports & Suggestion",
          navigatorPage: ReportsAndSuggestion(),
          icon: Icons.border_color,
        ),
        _drawListTileCard(
          title: "Share App",
          icon: Icons.share,
        ),
        _drawListTileCard(
          title:  "العربيه",
          icon: Icons.language,
        ),
        _drawListTileCard(
          title: "About App",
          navigatorPage: AboutApp(),
          icon: Icons.info,
        ),
        _drawListTileCard(
          title: "Sign Out",
          navigatorPage: SignIn(),
          icon: Icons.exit_to_app,
        ),
      ],
    );
  }
}
