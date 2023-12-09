import 'package:flutter/material.dart';
import 'package:todo_state_management_with_flutter/components/commonButton.dart';
import 'package:todo_state_management_with_flutter/constants/colors.dart';
import 'package:todo_state_management_with_flutter/constants/styles.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text('Add Task', style: kStyle30),
          ),
          space,
          Material(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                fillColor: kWhite,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          space,
          const CommonButtton(
            text: 'Confirm',
          )
        ],
      ),
    );
  }
}
