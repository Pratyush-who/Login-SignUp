import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double height, width;
  final bool isPrimary;
  CustomButton({required this.width, required this.height, required this.isPrimary});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: isPrimary? Theme.of(context).primaryColor:const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
