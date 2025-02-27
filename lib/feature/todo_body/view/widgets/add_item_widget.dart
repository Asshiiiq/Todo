import 'package:flutter/material.dart';

class AddItemWidget extends StatelessWidget {
  const AddItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Center(
        child: Icon(
          Icons.add,
          size: 50,
          color: const Color.fromARGB(255, 17, 20, 23),
        ),
      ),
    );
  }
}
