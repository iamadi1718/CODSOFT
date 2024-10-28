import 'package:alarmapp/alarmset.dart';
import 'package:alarmapp/home.dart';
import 'package:alarmapp/stopwatch.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: BottomNavBarExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavBarExample extends StatefulWidget {
  @override
  _BottomNavBarExampleState createState() => _BottomNavBarExampleState();
}

class _BottomNavBarExampleState extends State<BottomNavBarExample> {
  int _currentIndex = 0;

  // List of pages for each tab
  final List<Widget> _pages = [
    homescreen(),
    alarmset(),
    StopwatchHome(),

  ];

  // Function to change the selected tab
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_currentIndex], // Display the currently selected page

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff34344a),
        selectedItemColor: Colors.yellow,

        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex, // Set the currently selected index
        onTap: _onTabTapped, // Handle tab change

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm,
              color: Colors.white,),
            label: 'Clock',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarms_sharp,
              color: Colors.white,),
            label: 'Alarm',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer,
              color: Colors.white,),
            label: 'Stopwatch',
          ),
        ],
      ),
    );
  }
}

// Home Screen Page
