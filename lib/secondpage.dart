import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Login/main.dart';

class SecondPage extends StatefulWidget{
  String username = "";
  @override
  _SecondPageState createState() => new _SecondPageState();
  }

  
class _SecondPageState extends State<SecondPage>{
  String _username = "";
  @override
  void initState() {
    getNamePreferences().then(updateUsername);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      title: new Text("Second Page"),
      ),
      body: new ListTile(title: new Text(_username),)
      );
  }
  void updateUsername(String username){
    
    setState((){
      this._username = username;
    });
  }

}