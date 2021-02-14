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
  String _password = "";
  @override
  void initState() {
    getNamePreferences().then(updateUsername);
    getPasswordPreferences().then(updatePassword);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      title: new Text("Second Page"),
      ),
      body: new Column(
        children: [
          ListTile(title: new Text("username : " + _username),
          
          ),
          ListTile(title: new Text("password : " + _password),)],
      )
      );
  }
  void updateUsername(String username){
    
    setState((){
      this._username = username;
    });
  }
  void updatePassword(String password){
    
    setState((){
      this._password = password;
    });
  }

}