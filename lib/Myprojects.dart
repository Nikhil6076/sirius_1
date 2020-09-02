import 'package:flutter/material.dart';
import 'package:sirius/chatapp/chatrooms.dart';

class MyProjects extends StatefulWidget {
  @override
  _MyProjectsState createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Project 1'),
            Text('Project 2'),
            Text('Project 3'),
            RaisedButton(
              child:Text('Go to project chats'),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> ChatRoom()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
