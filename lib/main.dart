import 'package:flutter/material.dart';

void main() => runApp(new HelloApp());

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Hello Flutter",
      home: new Scaffold(
        /*appBar: new AppBar(
          title: new Text("Login"),
          backgroundColor: Colors.cyan,
        ),*/
        body: new Login(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return new ListView(
      children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.only(top: 60.0),
                child: new Align(
                    alignment: Alignment.center,
                    child:
                        Icon(Icons.ac_unit, color: Colors.cyan, size: 100.0))),
            new Theme(
              data: theme.copyWith(primaryColor: Colors.cyan),
              child: new Padding(
                padding: new EdgeInsets.only(top: 60.0, left: 25.0, right: 25.0, bottom: 20.0),
                child: new TextField(
                  decoration: new InputDecoration(
                    labelText: "Username",
                    labelStyle:
                        theme.textTheme.caption.copyWith(color: Colors.cyan),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.only(
                          topLeft: new Radius.circular(10.0),
                          topRight: new Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
            ),
            new Theme(
              data: theme.copyWith(primaryColor: Colors.cyan),
              child: new Padding(
                padding: new EdgeInsets.all(25.0),
                child: new TextField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    labelText: "Password",
                    labelStyle:
                        theme.textTheme.caption.copyWith(color: Colors.cyan),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.only(
                          topLeft: new Radius.circular(10.0),
                          topRight: new Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 30.0),
              child: new FlatButton(
                  onPressed: () {},
                  child: new Text(
                    "LOGIN",
                    style: new TextStyle(color: Colors.cyan),
                  ),
                  shape: new RoundedRectangleBorder(
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(25.0)))),
            ),
          ],
        )
      ],
    );
  }
}
