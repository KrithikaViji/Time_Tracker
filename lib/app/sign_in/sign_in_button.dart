import 'package:flutter/material.dart';
import 'package:time_tracker/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton{
  SignInButton({
    String text,
    Color color,
    Color textColor,
    VoidCallback onPress,
  }) : super(
    widget: Text(
        text,
        style: TextStyle(
            color: textColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
        ),
  ),
    color: color,
    onPress: onPress,
    height: 60.0,
    width: 310.0,
    radius: 4.0,
  );

}
