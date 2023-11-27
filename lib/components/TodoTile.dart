import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/styles.dart';

class TodoTile extends StatefulWidget {
  const TodoTile({super.key});

  @override
  State<TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Checkbox(
                value: isDone,
                onChanged: (value) {
                  setState(() {
                    isDone = value!;
                  });
                },
              ),
            ),
            Text(
              'Football',
              style: kBlackStyle.copyWith(
                decoration: isDone == true
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ]),
          Row(children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: kEdit,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: kDelete,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
