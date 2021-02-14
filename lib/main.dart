import 'package:Login/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MaterialApp(
  home: new MyApp(),
  routes: <String, WidgetBuilder>{
        '/secondpage': (BuildContext context) => new SecondPage(),
  }));}
class MyApp extends StatelessWidget {
  var _controller = new TextEditingController();
  var mycontroller = new TextEditingController();

  

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.pink
    ));
   return Scaffold(
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: "username"
            )
          ),
          TextField(
            controller:mycontroller,
            decoration: InputDecoration(
              hintText:"password"
            )
          ),
          RaisedButton(
            child: Text("Login"),
            onPressed: (){
              saveUsername();
              savePassword();
              Navigator.of(context).pushNamed('/secondpage');
            })
        ],
        
      )
    );
    
  }
  void saveUsername(){
      String username = _controller.text;
      saveNamePreference(username);

    }
  void savePassword(){
    String password = mycontroller.text;
    savePasswordPreference(password);
  }
}
Future<bool> savePasswordPreference(String password) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("password", password);
} 

Future<String> getPasswordPreferences() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String password = prefs.getString("password");
  return password;
  
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