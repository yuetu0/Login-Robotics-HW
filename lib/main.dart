import 'package:Login/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(new MaterialApp(
  home: new MyApp(),
  routes: <String, WidgetBuilder>{
        '/secondpage': (BuildContext context) => new SecondPage(),
  }));}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "username text"
            )
          ),
          TextField(
            decoration: InputDecoration(
              hintText:"password"
            )
          ),
          RaisedButton(
            child: Text("Login"),
            onPressed: null)
        ],
        
      )
    );
  }
  
}
