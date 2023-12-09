import 'package:flutter/material.dart';
import 'package:todo_state_management_with_flutter/constants/styles.dart';

class CommonButtton extends StatelessWidget {
  final String text;
  const CommonButtton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      borderRadius: BorderRadius.circular(50),
      color: Colors.lightBlueAccent,
      child: Container(
        height: 50,
        width: 100,
        alignment: Alignment.center,
        child: Text(text, style: kStyle18),
      ),
    );
  }
}
