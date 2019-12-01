import 'package:flutter/material.dart';
import 'package:flutterapp/src/screens/Login/widgets/login_with_socials.dart';

import 'widgets/login_form.dart';

class LoginScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      appBar: AppBar(title: Text('Login to'), centerTitle: true,),
      body: LayoutBuilder(
        builder: (context, constraints){
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                      minWidth: constraints.maxWidth,
                      minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text('Logo', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w100, color: Colors.white),),
                            LoginWithSocials(),
                            LoginForm(
                              btnSummitBgColor: Colors.green,
                              btnTextColor: Colors.white,
                              usernameColor: Theme.of(context).brightness != Brightness.light ? Colors.black : Colors.white,
                              passwordColor: Theme.of(context).brightness != Brightness.light ? Colors.black : Colors.white,
                              onValidate: (){},
                            ),
                            Divider(),
                            Container(
                              width: constraints.maxWidth,
                              child:RaisedButton(
                              onPressed: (){},
                              child: Text('Create New Account'),
                              color: Colors.orange,
                            ))
                          ],
                        )),
                      ),
            ),
          );
        },
      ),
    );
  }

}