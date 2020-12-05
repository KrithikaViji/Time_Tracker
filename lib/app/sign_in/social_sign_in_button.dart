import 'package:flutter/material.dart';
import 'package:time_tracker/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    String assetName,
    String text,
    Color color,
    Color textColor,
    double height,
    double width,
    VoidCallback onPress,
  }) : super(
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(assetName),
              /*Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),*/
              //Opacity(opacity: 0.0, child: Image.asset(assetName)),
            ],
          ),
          color: color,
          onPress: onPress,
          height: 60.0,
          width: 125.0,
          radius: 4.0,
        );
}
