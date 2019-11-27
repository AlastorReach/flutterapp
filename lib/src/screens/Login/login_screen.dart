import 'package:flutter/material.dart';
import 'package:flutterapp/src/utils/custom_icons.dart';
import './widgets/login_form.dart';
import './widgets/dont_have_account.dart';
import './widgets/forgot_password.dart';
import '../../common/widgets/social_login_icon.dart';
import '../../usecases/facebook_login_intent.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text('AppBar'),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minWidth: constraints.maxWidth,
                      minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(mainAxisSize: MainAxisSize.max, children: [
                      FlutterLogo(
                        style: FlutterLogoStyle.horizontal,
                        size: size.width * 0.4,
                        textColor: Colors.white,
                      ),
                      Expanded(
                          child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        margin: EdgeInsets.all(0),
                        child: Padding(
                            padding: EdgeInsets.all(30),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  'Sign In',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 30),
                                ),
                                LoginForm(),
                                ForgotPassword(),
                                DontHaveAnAccount(),
                                Expanded(
                                    child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            _showOrDivider(),
                                            SizedBox(height: 20,),
                                            _showSocialIcons()
                                          ],
                                        ))),
                              ],
                            )),
                      )),
                      //Text('footer'),
                    ]),
                  )));
        }));
  }

  Widget _showSocialIcons() {
    return Flex(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      direction: Axis.horizontal,
      children: <Widget>[
        SocialLoginIcon(
          containerColor: Color(0xFF383349),
          iconColor: Colors.white,
          height: 30,
          width: 30,
          socialIcon: CustomIcons.facebook,
          toDo: FacebookLoginIntent.onFacebookLoginIntent,
        ),
        SocialLoginIcon(
          containerColor: Color(0xFF383349),
          iconColor: Colors.white,
          height: 30,
          width: 30,
          socialIcon: CustomIcons.facebook,
          toDo: FacebookLoginIntent.onFacebookLoginIntent,
        ),
        SocialLoginIcon(
          containerColor: Color(0xFF383349),
          iconColor: Colors.white,
          height: 30,
          width: 30,
          socialIcon: CustomIcons.facebook,
          toDo: FacebookLoginIntent.onFacebookLoginIntent,
        )
      ],
    );
  }

  Widget _showOrDivider() {
    return Row(children: <Widget>[
      Expanded(child: Divider(color: Colors.black54,)),
      Text("  OR  "),
      Expanded(child: Divider(color: Colors.black54,)),
    ]);
  }
}
