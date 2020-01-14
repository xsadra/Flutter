import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color cardBackColor;
  final Widget cardChild;

  ReusableCard({@required this.cardBackColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cardBackColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
