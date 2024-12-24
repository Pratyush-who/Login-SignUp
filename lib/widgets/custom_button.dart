import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double height, width;
  final bool isPrimary;
  final Function onPressed;
  final String text;

  CustomButton(
      {required this.width,
      required this.height,
      required this.isPrimary,
      required this.onPressed,
      required this.text,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: isPrimary
              ? Theme.of(context).primaryColor
              : const Color.fromARGB(255, 255, 255, 255),
          boxShadow: isPrimary
              ? [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 3,
                  ),
                ]
              : [],
          border: Border.all(
              color: isPrimary
                  ? Colors.transparent
                  : Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(12)),
      child: MaterialButton(
        onPressed: () => onPressed(),
        child: Text(text,style: isPrimary? TextStyle(color: Colors.white,fontSize: 18) :TextStyle(color: Theme.of(context).primaryColor,fontSize: 18),),
      ),
    );
  }
}
