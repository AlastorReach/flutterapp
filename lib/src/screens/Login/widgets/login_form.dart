import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final Color btnSummitBgColor;
  final Color btnTextColor;
  final Color usernameColor;
  final Color passwordColor;
  final Function onValidate;

  LoginForm(
      {@required this.btnSummitBgColor,
      @required this.btnTextColor,
      @required this.usernameColor,
      @required this.passwordColor,
      @required this.onValidate});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            maxLines: 1,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter an user name or email';
              }
              return null;
            },
            style: TextStyle(fontWeight: FontWeight.w100, color: widget.usernameColor),
            decoration: InputDecoration(
                hintText: 'User name',
                labelText: 'User name or Email',
                hintStyle: TextStyle(color: widget.usernameColor),
                labelStyle: TextStyle(color: widget.usernameColor)),
          ),
          TextFormField(
            maxLines: 1,
            obscureText: true,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter a password';
              }
              return null;
            },
            style: TextStyle(
                fontWeight: FontWeight.w100, color: widget.passwordColor),
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              hintStyle: TextStyle(color: widget.usernameColor),
              labelStyle: TextStyle(color: widget.usernameColor)
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: widget.btnSummitBgColor,
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));

                    await widget.onValidate();
                  }
                },
                child: Text('Sign In',
                    style: TextStyle(
                      color: widget.btnTextColor,
                    )),
              ))
        ],
      ),
    );
  }
}
