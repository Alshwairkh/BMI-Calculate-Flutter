import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPressed});
  final IconData icon;

  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: RawMaterialButton(
        child: Icon(icon),
        onPressed: onPressed,
        constraints: BoxConstraints.tightFor(
          width: 56,
          height: 56,
        ),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
      ),
    );
  }
}
