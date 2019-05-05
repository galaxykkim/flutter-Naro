import 'package:flutter/material.dart';


class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
    return Scaffold(
      body: SafeArea(
          child: Center(
      )));
  }


}