import 'package:flutter/material.dart';

class Custom_textfield extends StatefulWidget {
  Custom_textfield({super.key, required this.text1, required this.text2,this.icon,required this.controller});

  String text1;
  String text2;
  Widget? icon;


  final TextEditingController controller;

  @override
  State<Custom_textfield> createState() => _Custom_textfieldState();
}

class _Custom_textfieldState extends State<Custom_textfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
       style: const TextStyle(fontFamily: 'popins'),
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          labelText: widget.text1,
          hintText: widget.text2,
      suffixIcon: widget.icon),
    );
  }
}
