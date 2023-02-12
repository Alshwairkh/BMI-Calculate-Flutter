import 'package:flutter/material.dart';
import 'constants.dart';

class BottumButton extends StatelessWidget {
  BottumButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Text(
          buttonTitle,
          style: kLargeFontStyle,
        ),
      ),
    );
  }
}
