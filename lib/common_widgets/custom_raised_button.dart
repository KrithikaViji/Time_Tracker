import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    this.widget,
    this.color,
    this.onPress,
    this.radius: 4.0,
    this.height: 40.0,
    this.width,
  });

  final Widget widget;
  final VoidCallback onPress;
  final Color color;
  final double height;
  final double radius;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: RaisedButton(
        child: widget,
        onPressed: onPress,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
      ),
    );
  }
}
