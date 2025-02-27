import 'package:flutter/material.dart';
import 'package:todo/feature/todo_body/view/pages/provider.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(todo.emoji, style: TextStyle(fontSize: 40)),
            SizedBox(height: 8),
            Text(
              todo.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(todo.task, textAlign: TextAlign.center),
            Spacer(),
          ],
        ),
      ),
    );
  }
}