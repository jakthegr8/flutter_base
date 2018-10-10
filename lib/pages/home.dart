import 'package:flutter/material.dart';
import '../generated/i18n.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(
            S.of(context).homePageTitle,
          ),
          centerTitle: true),
      body: new Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: () => {},
              child: Text(
                S.of(context).LoginButton,
                style: TextStyle(fontSize: 17.0),
              ),
            ),
            new SizedBox(
              width: 15.0,
            ),
            new RaisedButton(
              onPressed: () => {},
              child: Text(S.of(context).LoginButton,
                  style: TextStyle(fontSize: 17.0)),
              color: Color.fromRGBO(229, 94, 66, 1.0),
            ),
          ],
        ),
      ),
    );
  }
}
