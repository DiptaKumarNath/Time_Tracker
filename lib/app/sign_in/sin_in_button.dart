import 'package:flutter/material.dart';
import 'package:new_app/common_widget/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          child: Text(text,
              style: TextStyle(
                color: textColor,
                fontSize: 15.0,
              )),
          color: color,
          borderRadius: 6.0,
          // height: 40.0,
          onPressed: onPressed,
        );
}
