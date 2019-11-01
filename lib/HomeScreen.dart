import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/LoginPage.dart';
import 'package:flutter_shared_preferences/ProfilePage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(
                      //  builder: (BuildContext context) => new LoginPage()),
                        builder: (BuildContext context) => new ProfilePage()),
                    (Route<dynamic> route) => false);
              })
        ],
      ),
      body: new Container(
        alignment: Alignment.center,
        child: new Text(
          "Welcome to flutter.!",
          style: new TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
