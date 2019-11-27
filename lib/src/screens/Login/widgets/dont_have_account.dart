import 'package:flutter/material.dart';

class DontHaveAnAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "Don't have an account?",
            style: TextStyle(color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                  text: ' Sign Up',
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.w700))
            ]),
      ),
      onTap: () {},
    );
  }
}
