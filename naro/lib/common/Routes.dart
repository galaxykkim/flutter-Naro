import 'package:flutter/material.dart';

import 'package:naro/pages/SplashPage.dart';
import 'package:naro/pages/LoginPage.dart';
import 'package:naro/pages/MainPage.dart';


final routes = {
  '/': (BuildContext context) => SplashPage(),
  '/login': (BuildContext context) => LoginPage(),
  '/main': (BuildContext context) => MainPage()
};