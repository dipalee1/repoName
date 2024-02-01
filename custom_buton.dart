import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MySubmitButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final String prefixIcon;
  final Color color;
  final Color textcolor;

  const MySubmitButton(
      {required this.onPressed,
      required this.buttonText,
      required this.prefixIcon,
      required this.color,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color, // Button color
          onPrimary: textcolor, // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              prefixIcon,
              height: 40,
              width: 30,
            ),
            //  Icon(prefixIcon), // Prefix Icon
            SizedBox(width: 20), // Adjust the spacing between icon and text
            Text(
              buttonText,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
