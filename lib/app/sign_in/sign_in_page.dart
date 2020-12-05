import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/sign_in_button.dart';
import 'package:time_tracker/app/sign_in/social_sign_in_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInPage extends StatelessWidget {
  SignInPage({@required this.onSignIn});
  final Function(FirebaseUser) onSignIn;
  void _signInAnonymously() async{
    try{
      final authResult = await FirebaseAuth.instance.signInAnonymously();
      onSignIn(authResult.user);
    }catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        centerTitle: true,
        title: Text('Time Tracker'),
        elevation: 6.0,
      ),*/
      body: _buildContent(), //Ctrl+Alt+m to Extract method
    );
  }

  Widget _buildContent() {
    return Container(
      //Container is a subclass of Widget..
      child: Padding(
        //color: Colors.white70,  color is the property of Container.
        padding: EdgeInsets.all(70.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'Sign in',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            /*RaisedButton(
              child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  )
              ),
              onPressed: () {},
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            CustomRaisedButton(
              widget: Text(
                  'Sign in with Facebook',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  ),
              ),
              color: Colors.white,
              onPress: () {},
              radius: 8.0,
            ),*/
            SignInButton(
              text: 'Sign in with email',
              color: Colors.deepPurple[400],
              textColor: Colors.white,
              onPress: () {},
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SocialSignInButton(
                  assetName: 'assets/google-logo.png',
                  text: 'Sign in with google',
                  color: Colors.white,
                  textColor: Colors.black87,
                  onPress: () {},
                ),
                SocialSignInButton(
                  assetName: 'assets/facebook-logo.png',
                  text: 'Sign in with Facebook',
                  color: Color(0xFF334D92),
                  textColor: Colors.white,
                  onPress: () {},
                ),
              ],
            ),
            SizedBox(height: 6.0),
            /*SignInButton(
              text: 'Sign in with email',
              color: Colors.teal[700],
              textColor: Colors.white,
              onPress: () {},
            ),*/
            Row(children: [
              Expanded(
                child: Container(
                  child: Divider(
                    color: Colors.white,
                    height: 30,
                    endIndent: 10.0,
                  ),
                ),
              ),
              Text(
                'or',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(
                child: Container(
                  child: Divider(
                    color: Colors.white,
                    height: 30,
                    indent: 10.0,
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 6.0,
            ),
            SignInButton(
              text: 'Go anonymous',
              textColor: Colors.white,
              color: Colors.deepPurple,
              onPress: _signInAnonymously,
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/background.jpg"), fit: BoxFit.cover),
      ),
    );
  }
}
