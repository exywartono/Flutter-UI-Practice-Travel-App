import 'package:flutter/material.dart';
import 'package:ui_challenge_things_todo_app/pages/explore.dart';
import 'package:ui_challenge_things_todo_app/pages/home.dart';
import 'package:ui_challenge_things_todo_app/pages/inbox.dart';
import 'package:ui_challenge_things_todo_app/pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final _layoutPage = [Home(), Explore(), Inbox(), Profile()];

  void _onItemBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: _layoutPage.elementAt(_currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.inbox,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: '',
            ),
          ],
          currentIndex: _currentIndex,
          onTap: _onItemBarTapped,
        ),
      ),
    );
  }
}
