import 'package:flutter/material.dart';

class CustomSigningButton extends StatelessWidget {
  const CustomSigningButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.borderColor,
    required this.textColor,
    required this.backgroundColor,
  });
  final String title;
  final void Function()? onPressed;
  final Color borderColor;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 360,
      child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStatePropertyAll(backgroundColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: borderColor),
              ),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
                color: textColor, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          onPressed: onPressed),
    );
  }
}
