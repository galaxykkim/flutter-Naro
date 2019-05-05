import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:naro/common/Strings.dart';
import 'package:naro/viewmodel/LoginViewModel.dart';

class LoginPage extends StatefulWidget {
  final String title = 'Login';

  LoginPage({Key key, title}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  LoginViewModel loginViewModel = LoginViewModel();


  @override
  void initState() {
    super.initState();

    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                onPressed: () {
                  debugPrint("onClick Login Button");

                },
                child: Text(Strings.loginPage_login,
                  style: TextStyle(
                    fontSize: 20,
                  ),),),),
            Row(
              children: <Widget>[
                Checkbox(
                  value: true,
                  onChanged: (b) {
                    loginViewModel.setAutoLogin(b);
                  },
                ),
                Text(Strings.loginPage_autoLogin)

              ],
            )
          ],
        ),
      ),
    );
  }




  void goToMainPage() {


  }



}