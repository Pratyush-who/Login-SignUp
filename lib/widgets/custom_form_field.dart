import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final bool obscureText; 

  const CustomFormField({super.key, required this.label, this.obscureText = true}); 
  // this.wale ki val kuch bhi daalo same chlega

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText, 
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(
          color: Colors.black38,
        ),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}