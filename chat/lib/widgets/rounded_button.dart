
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String title;
  final Function onPressed;

  const RoundedButton(
      {Key key, this.color, this.title, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}
