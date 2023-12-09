import 'package:flutter/material.dart';
import 'package:todo_state_management_with_flutter/components/TodoTile.dart';
import 'package:todo_state_management_with_flutter/constants/colors.dart';
import 'package:todo_state_management_with_flutter/constants/styles.dart';
import 'package:todo_state_management_with_flutter/screens/addTaskScreen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50, left: 40, right: 40),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: kWhite,
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  Text('Todoey', style: kHeaderName),
                  Text('4 Tasks', style: kStyle18),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: const [
                    TodoTile(),
                    TodoTile(),
                    TodoTile(),
                    TodoTile(),
                    TodoTile(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: const Color.fromARGB(255, 246, 244, 244),
            context: context,
            builder: (context) => SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const AddTaskScreen(),
            )),
           );
        },
        child: const Icon(
          Icons.add,
          color: kWhite,
        ),
      ),
    );
  }
}
