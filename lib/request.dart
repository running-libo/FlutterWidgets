
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {

  @override
  Future<void> initState() async {
    super.initState();

    Response response;
    Dio dio = new Dio();
    response = await dio.get("http://ic.snssdk.com/2/article/v25/stream/?category=news_hot&count=20&min_behot_time=1457659116&bd_latitude=4.9E-324&bd_longitude=4.9E-324&bd_loc_time=1457672153&loc_mode=5&lac=4527&cid=28883&iid=3839760160&device_id=12246291682&ac=wifi&channel=baidu&aid=13&app_name=news_article&version_code=460&device_platform=android&device_type=iToolsAVM&os_api=19&os_version=4.4.4&uuid=352284045861006&openudid=84c1c7b192991cc6");
    print(response.data.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }

}