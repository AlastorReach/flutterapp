import 'package:flutter/material.dart';
import './widgets/login_form.dart';
import '../../common/widgets/facebook_login.dart';
import './widgets/forgot_password.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlutterLogo(size: size.width * 0.2,),
            Expanded(child:Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
              margin: EdgeInsets.all(0),
              child: SingleChildScrollView(child:Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Sign In', textAlign: TextAlign.left,),
                  LoginForm(),
                  FacebookLoginButton(),
                  ForgotPassword(),
                ],
              )),
            )),
            
          ],
        ),
      ),
    );
  }
}