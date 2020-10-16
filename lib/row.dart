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
        body: Container(
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                color: Color(0xFFFF0000),
                width: double.infinity,
                child: Text(
                  "text1",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                color: Color(0xFF00FF00),
                width: double.infinity,
                child: Text(
                  "text1",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                color: Color(0xFF0000FF),
                width: double.infinity,
                child: Text(
                  "text1",
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}