import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0.0,
        title: new Text(
          "Welcome",
          textScaleFactor: 1.3,
        ),
      ),
      body: new Container(
        color: Colors.amberAccent,
        padding: const EdgeInsets.all(30.0),
        child:  ListView(
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.all(20.0),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
              ),
              height: 100.0,
              alignment: Alignment.center,
              child: new Icon(
                Icons.beach_access,
                size: 100.0,
                color: Colors.green,
              ),
            ),
            new TextField(
              controller: new TextEditingController(),
              decoration: new InputDecoration(
                hintText: 'Username',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 10,),
            new TextField(
              controller: new TextEditingController(),
              obscureText: true,
              decoration: new InputDecoration(
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            new Container(
              // margin: const EdgeInsets.only( bottom: 150.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new RaisedButton(
                      child: new Text("Login",style: TextStyle(color: Colors.white),),
                      onPressed: onPressed,
                      color: Colors.pink,
                    ),
                  ),
                  new RaisedButton(
                    child: new Text("Forgot Password"),
                    onPressed: onPressed,
                  ),
                ],
              ),
            ),
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new RaisedButton(
                      child: new Text("Register"),
                      onPressed: onPressed,
                      color: Colors.yellow,
                    ),
                  ),
                  new RaisedButton(
                    child: new Text("Continue as Guest"),
                    onPressed: () {Navigator.pushNamed(context, '/forum');},
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }

  void onPressed() {}

}
