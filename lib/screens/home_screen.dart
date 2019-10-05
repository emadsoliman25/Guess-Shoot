import 'package:flutter/material.dart';
import 'package:guess_shoot/screens/Navigation_bar_screens/champions.dart';
import 'package:guess_shoot/screens/Navigation_bar_screens/expectations.dart';
import 'package:guess_shoot/screens/Navigation_bar_screens/more.dart';
import 'package:guess_shoot/screens/Navigation_bar_screens/ranking.dart';
import 'package:guess_shoot/screens/Navigation_bar_screens/statistics.dart';
import 'package:guess_shoot/utilities/utilities_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  var _bottomNavigationBarPages = <Widget>[
    Expectations(),
    Ranking(),
    Champions(),
    Statistics(),
    More(),
  ];

  @override
  Widget build(BuildContext context) {
    return drawPageStack(
      backgroundAssets: 'assets/images/home.jpeg',
      bottomNavigationBar: _bottomNavigationBar(),
      body: _bottomNavigationBarPages.elementAt(_selectedIndex),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          title: Text('Expectations'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_numbered),
          title: Text('Ranking'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.flag),
          title: Text('Champions'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trending_up),
          title: Text('Statistics'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('More'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[700],
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      onTap: _onItemTapped,
    );
  }
}
