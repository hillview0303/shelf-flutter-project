import 'package:flutter/material.dart';
import 'package:untitled/ui/main/home/home_page.dart';
import 'package:untitled/ui/main/myshelf/my_shelf.dart';
import 'package:untitled/ui/main/search/search_page.dart';

import '../common/components/custom_bottom_navigation_bar.dart';
import 'mypage/mypage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    MyShelf(),
    MyPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }
}
