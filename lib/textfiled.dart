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
        appBar: AppBar(
          title: Text("title"),
        ),
        body: Center(
          child: TextField(
            decoration: InputDecoration(
              labelText: "userName",
              hintText: "请输入用户名",
              filled: true,
              fillColor: Colors.lightGreenAccent
            ),
            maxLines: 1,
            onChanged: (value) {

            },
            onSubmitted: (value) {

            },
          ),
        ),
      ),
    );
  }

}