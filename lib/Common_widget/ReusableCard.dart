import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPressed;

  reusableCard({@required this.color,@required this.cardChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ));
  }
}
