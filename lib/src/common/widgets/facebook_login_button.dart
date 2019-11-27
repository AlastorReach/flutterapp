import 'package:flutter/material.dart';
import '../../utils/custom_icons.dart';
import '../../usecases/facebook_login_intent.dart';

class FacebookLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      icon: Icon(CustomIcons.facebook, color: Colors.white,),
      color: Color(0xFF4167B2),
      label: Text('Inicia sesión con Facebook', style: TextStyle(color: Colors.white),),
      onPressed: () async {
        await FacebookLoginIntent.onFacebookLoginIntent();
      },
    );
  }

  
}
