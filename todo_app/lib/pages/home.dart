import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage();

  List toDoList = [
    ["learn web dev", false],
    ["learn flutter", false],
    ["learn ai", false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: const Text("Todo app"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        ),
        body: ListView.builder(itemCount: toDoList.length, itemBuilder: (BuildContext context, index ){
          return Container(
            child: Text(toDoList[index][0]),
          );
        }),
    );
  }
}