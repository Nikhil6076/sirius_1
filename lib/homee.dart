import 'package:flutter/material.dart';
import 'package:sirius/Myprojects.dart';
import 'package:sirius/hub.dart';
import 'package:sirius/profile.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex=0;

  final List<Widget> tabs=[
    Hub(),
    MyProjects(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My projects'),
      ),
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepOrangeAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Hub'),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_none),
            title: Text('My projects'),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            backgroundColor: Colors.grey,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex=index;
          });

        },
      ),
    );
  }
}
