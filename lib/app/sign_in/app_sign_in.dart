import 'package:flutter/material.dart';
import 'package:new_app/app/sign_in/sin_in_button.dart';
import 'package:new_app/app/sign_in/social_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInPage extends StatelessWidget {
  Future<void> _signInAnonymously() async {
    try {
      final authResult = await FirebaseAuth.instance.signInAnonymously();
      print('${authResult.user.uid}');
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        centerTitle: true,
        elevation: 45.0,
      ),
      body: _buildcontent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildcontent() {
    return Padding(
      //color: Colors.yellow,
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.0),
          SocialSignInButton(
            text: "Sign in with google",
            textColor: Colors.black87,
            color: Colors.white,
            asseturl: 'images/google-logo.png',
            onPressed: () {},
            //borderRadius: 4.0,
          ),
          SizedBox(height: 8.0),
          SocialSignInButton(
            text: "Sign in with facebook",
            textColor: Colors.white,
            color: Color(0xFF334D92),
            asseturl: 'images/facebook-logo.png',
            onPressed: () {},
            //borderRadius: 4.0,
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Sign in with email',
            textColor: Colors.black87,
            color: Colors.teal,
            onPressed: () {},
            //borderRadius: 4.0,
          ),
          SizedBox(height: 6.0),
          Center(
            child: Text(
              'Or',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
          SignInButton(
            text: 'Sign in annonymousely',
            textColor: Colors.black87,
            color: Colors.lime[300],
            onPressed: _signInAnonymously,
            //borderRadius: 4.0,
          ),
        ],
      ),
    );
  }
}
