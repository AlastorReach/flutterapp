import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class FacebookLoginIntent {
  static Future<void> onFacebookLoginIntent() async {
    final facebookLogin = FacebookLogin();
    final result = await facebookLogin.logIn(['email']);
    print('RESULT STATUS');
    print(result.status);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
      print('RESULT ACCESS TOKEN');
      print(result.accessToken.token);
        //_sendTokenToServer(result.accessToken.token);
        // _showLoggedInUI();
        break;
      case FacebookLoginStatus.cancelledByUser:
        //_showCancelledMessage();
        break;
      case FacebookLoginStatus.error:
        //_showErrorOnUI(result.errorMessage);
        break;
    }
  }
}