import 'package:bmicalculator/views/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Iconcontent extends StatelessWidget {
  final IconData icon;
  final String label;

  Iconcontent({ this.icon,this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
            icon,
            size: 80,color: ktextColor
        ),
        Text(
          label,
          style: TextStyle(fontSize: 18,color: ktextColor),
        )
      ],
    );
  }
}
