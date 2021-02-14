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
  var _controller = new TextEditingController();
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _controller,
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
            onPressed: (){
              saveUsername();
            })
        ],
        
      )
    );
    
  }
  void saveUsername(){
      String username = _controller.text;
      saveNamePreference(username);

    }
}

Future<bool> saveNamePreference(String username) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("username", username);
} 

Future<String> getNamePreferences() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String username = prefs.getString("username");
  return username;
}