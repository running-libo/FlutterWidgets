import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        FloatingActionButton(
          child: Text("+", style: TextStyle(fontSize: 30)),
          onPressed: () {
            print("FloatingActionButton Click");
          },
        ),

        RaisedButton(
          child: Text("RaisedButton"),
          onPressed: () {
            print("RaisedButton Click");
          },
        ),

        FlatButton(
          child: Text("FlatButton"),
          onPressed: () {
            print("FlatButton Click");
          },
        ),

        OutlineButton(
          child: Text("OutlineButton"),
          onPressed: () {
            print("OutlineButton Click");
          },
        ),

        RaisedButton(
          child: Text("登录",
            style: TextStyle(color:Colors.white),
          ),
          color: Colors.red,
          highlightColor: Colors.red[600],  //添加按下背景
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),  //设置圆角
          onPressed: () {
            print("登录");
          },
        )
      ],
    );
  }
}