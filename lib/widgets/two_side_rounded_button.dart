import 'package:flutter/material.dart';

import '../constants.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final double radios;
  final Function press;
  const TwoSideRoundedButton({
    Key key, this.text, this.radios = 29, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radios),
                bottomRight: Radius.circular(radios)
            )
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),),
      ),
    );
  }
}