import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("flutter demo"),
          ),
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<ListItem> list = new List();

  HomeContent() {
    for (int i = 0; i < 20; i++) {
      list.add(new ListItem(
          "content",
          Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602884612610&di=99e5e92e7d3fd95d9c922f29c35f4b61&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2Fb%2F57a2a20321de9.jpg",
              alignment: Alignment.topCenter)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 0,
            childAspectRatio: 2),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: list[index].image,
            title: Text(list[index].title),
          );
        });
  }
}

class ListItem {
  final String title;
  final Image image;

  ListItem(this.title, this.image);
}
