import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:naro/common/Strings.dart';
import 'package:naro/viewmodel/LoginViewModel.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }

}


class _LoginPageState extends State<LoginPage> {

  LoginViewModel loginViewModel = LoginViewModel();

  bool _isAutoLogin = false;


  void _isAutoLoginChanged(bool b) {
    debugPrint('자동로그인 여부 = $b');
    _isAutoLogin = b;
    setState((){});
  }


  void _loginButtonClicked() {
    Navigator.of(context).pushReplacementNamed('/main');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.loginPage_title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                style: TextStyle(fontSize: 20,),
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: Strings.loginPage_account),),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                style: TextStyle(fontSize: 20),
                maxLines: 1,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(labelText: Strings.loginPage_password),),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: RaisedButton(
                onPressed: _loginButtonClicked,
                child: Text(Strings.loginPage_login,
                  style: TextStyle(
                    fontSize: 20,
                  ),),),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    value: _isAutoLogin,
                    onChanged: _isAutoLoginChanged,
                  ),
                  Text(Strings.loginPage_autoLogin)
                ],
              )),
          ]))
    );
  }




  void goToMainPage() {


  }



}