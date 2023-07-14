import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final TextEditingController nameController;
  final String hinttext;
  final int maxlin;
  const TextWidget(
      {Key? key,
      required this.nameController,
      required this.hinttext,
      required this.maxlin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: nameController,
      maxLines: maxlin,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hinttext,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
      ),
    );
  }
}
