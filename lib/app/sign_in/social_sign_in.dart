import 'package:flutter/material.dart';
import 'package:new_app/common_widget/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required String asseturl,
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(asseturl),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 15.0),
              ),
              Opacity(
                child: Image.asset(asseturl),
                opacity: 0.0,
              ),
            ],
          ),
          color: color,
          borderRadius: 6.0,
          // height: 40.0,
          onPressed: onPressed,
        );
}
