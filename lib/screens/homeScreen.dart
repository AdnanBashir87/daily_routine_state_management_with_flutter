import 'package:flutter/material.dart';
import 'package:todo_state_management_with_flutter/components/TodoTile.dart';
import 'package:todo_state_management_with_flutter/constants/colors.dart';
import 'package:todo_state_management_with_flutter/constants/styles.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
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
                  Text('4 Tasks', style: kNormalStyle),
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
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Column(
                  children: [
                    const TextField(),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Confirm'))
                  ],
                ),
              );
            },
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
