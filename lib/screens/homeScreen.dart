import 'dart:io';

import 'package:flutter/material.dart';
import 'package:todo_state_management_with_flutter/components/TodoTile.dart';

import '../constants/colors.dart';
import '../constants/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              color: Colors.blue,
              height: height * 0.5,
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.08),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: kWhite.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.menu,
                        color: kWhite,
                        size: 30,
                      ),
                    ),
                    const Text('Daily Ones', style: kHeaderName),
                    const Text('4 Tasks', style: kNormalStyle)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            top: height * 0.35,
            child: Container(
              width: width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: const Column(
                children: [
                  TodoTile(),
                  TodoTile(),
                  TodoTile(),
                  TodoTile(),
                  TodoTile(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ListTile(
//   leading:
//   title:
// )
