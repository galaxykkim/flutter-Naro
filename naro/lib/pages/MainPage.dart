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
      drawer: _mainDrawer(),
      body: Center(
        child: GridView.extent(
            maxCrossAxisExtent: 100,
            children: _initTimeTable(3)),
      ),
    );
  }


  List<Widget> _initTimeTable(int roomCount) {
    return List.generate((roomCount*48), (index) {
      return Center(
        child: Text(
          'Item $index',
          style: Theme.of(context).textTheme.headline,
        ),
      );
    });
  }


  Drawer _mainDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('나로 님 안녕하세요.'),
            decoration: BoxDecoration(
              color: Colors.blue)),
          ListTile(
            title: Text(Strings.mainPage_menu_meetingroom),
            onTap: () {},
          ),
          ListTile(
            title: Text(Strings.mainPage_menu_joins),
            onTap: () {},
          ),
          ListTile(
            title: Text(Strings.mainPage_menu_settins),
            onTap: () {},
          )
        ],
      ),
    );
  }

}