import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 200,
          child: Swiper(
            itemBuilder: (BuildContext context,int index){
              return new Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603442938191&di=6d134b40bcc1e448fa4654faaebdf827&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20170312%2F325af66b3351496783fd3cb4750f6759_th.jpg",
                  fit: BoxFit.fill);
            },
            itemCount: 3,
            pagination: SwiperPagination(),
            controller: new SwiperController(),
          ),
        ),
      ),
    );
  }

}