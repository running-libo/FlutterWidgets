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
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602884612610&di=99e5e92e7d3fd95d9c922f29c35f4b61&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2Fb%2F57a2a20321de9.jpg",
                alignment: Alignment.topCenter,
              )),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("title"),
//         ),
//         body: Container(
//           child: Image.asset(
//             "images/test.jpeg",
//             width: 100,
//             height: 100,
//             alignment: Alignment.topCenter,
//           ),
//           width: 300,
//           height: 300,
//         ),
//       ),
//     );
//   }
// }
