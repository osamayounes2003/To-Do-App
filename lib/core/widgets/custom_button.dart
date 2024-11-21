import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
//final VoidCallback onPressed;
final String buttonText;
final Color buttonColor;
final Color textColor;
final GestureTapCallback? onTapFunction ;
CustomButton({
 //
  required this.buttonText,
  required this.buttonColor,
  required this.textColor, this.onTapFunction,
});

@override
Widget build(BuildContext context) {
  return InkWell(
   onTap: onTapFunction,
    borderRadius: BorderRadius.circular(8),
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
}