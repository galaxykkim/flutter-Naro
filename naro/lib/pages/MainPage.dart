import 'package:flutter/material.dart';
import 'package:naro/common/Strings.dart';


class MainPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }

}


class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.mainPage_title),
      ),
      body: Center(),
    );
  }

}