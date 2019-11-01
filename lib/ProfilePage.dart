import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/HomeScreen.dart';

class ProfilePage extends StatefulWidget {
  @override
  _profilePage createState() => new _profilePage();
}

class _profilePage extends State<ProfilePage> {
  TextEditingController mFirstNme = new TextEditingController();
  TextEditingController mLastName = new TextEditingController();
  TextEditingController mAge = new TextEditingController();

  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white12,

      ),
      body: new SingleChildScrollView(
        child: _layout(),
        scrollDirection: Axis.vertical,
      ),
    );
  }
  Widget _layout() {
    return new Container(
      padding: EdgeInsets.only(right: 5.0, left: 5.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.all(30.0),
            child: new Image.asset(
              "assets/images/flutter_icon.png",
              height: 100.0,
            ),
          ),
          new TextField(
            controller: mFirstNme,
            decoration: InputDecoration(
                hintText: "FirstName",
                hintStyle: new TextStyle(color: Colors.grey.withOpacity(0.3))),
          ),
          new TextField(
              controller: mLastName,
              decoration: InputDecoration(
                  hintText: "LastName",
                  hintStyle:
                  new TextStyle(color: Colors.grey.withOpacity(0.3)))),

          new TextField(
              controller: mLastName,
              decoration: InputDecoration(
                  hintText: "Age",
                  hintStyle:
                  new TextStyle(color: Colors.grey.withOpacity(0.3)))),

          new Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration:
            new BoxDecoration(border: Border.all(color: Colors.black)),
            child: new ListTile(
              
              title: new Text(
                "Login",
                textAlign: TextAlign.center,
              ),
             onTap: _navigatorScreen,
            ),
          )
        ],
      ),
    );
  }

  _navigatorScreen() {
    if (mFirstNme.text.length != 0 || mLastName.text.length != 0 || mAge.text.length != 0) {
      Navigator.of(context).pushAndRemoveUntil(
          new MaterialPageRoute(
              builder: (BuildContext context) => new HomeScreen()),
              (Route<dynamic> route) => false);
    } else {
      showDialog(
          context: context,
          barrierDismissible: false,
          child: new CupertinoAlertDialog(
            content: new Text(
              "username or password \ncan't be empty",
              style: new TextStyle(fontSize: 16.0),
            ),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: new Text("OK"))
            ],
          ));
    }
  }
}