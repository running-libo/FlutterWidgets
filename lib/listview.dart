import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("ListView"),
//         ),
//         body: MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return new ListView(
//       children: <Widget>[
//         new ListTile(
//           leading: new Icon(Icons.access_alarm_rounded),
//           title: Text("闹钟"),
//         ),
//         new ListTile(
//           leading: new Icon(Icons.account_balance_rounded),
//           title: Text("主页"),
//         ),
//         new ListTile(
//           leading: new Icon(Icons.add_a_photo_outlined),
//           title: Text("相机"),
//         ),
//         new ListTile(
//           leading: new Icon(Icons.airplanemode_on_rounded),
//           title: Text("飞机"),
//         ),
//         new ListTile(
//           leading: new Icon(Icons.account_circle),
//           title: Text("头像"),
//         )
//       ],
//     );
//   }
// }

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("flutter demo"),
          ),
          body: HomeContent()
        ),
      );
  }

}

class HomeContent extends StatelessWidget {
  List<String> list = new List();

  HomeContent() {
    for(var i=0;i<20;i++) {
      list.add("第$i条数据");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index]),
        );
      },
    );
  }

}

