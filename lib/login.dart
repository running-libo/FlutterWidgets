import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.people),
                    labelText: "userName"
                ),),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: "passWord",
                ),
              ),
              Container(
                width: double.infinity,
                  height: 45,
                  child: RaisedButton(
                    child: Text("login",
                      style: TextStyle(color:Colors.white, fontSize: 17)
                    ),
                    highlightColor: Colors.lightGreen,
                    color: Colors.red,
                  ),
                margin: EdgeInsets.all(10),
              )
            ],
          ),
        ),
      )
    );
  }

}