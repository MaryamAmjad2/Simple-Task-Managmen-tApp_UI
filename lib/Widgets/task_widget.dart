import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String txt;
  final Color clr;
  const TaskWidget({Key? key, required this.txt, required this.clr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 14,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(color: clr, fontSize: 20),
        ),
      ),
    );
  }
}
