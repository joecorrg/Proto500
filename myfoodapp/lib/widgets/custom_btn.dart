import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key = null,
    required this.text,
    this.txtColor,
    this.bgColor,
    this.shadowColor,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final Color? txtColor;
  final Color? bgColor;
  final Color? shadowColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onTap(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Text(
              text,
              style: TextStyle(
                color: txtColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
