import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  const TextFieldWidget({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        
        hintText: hintText,hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
    
           borderSide: BorderSide(color: Color.fromARGB(84, 158, 158, 158))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Color.fromARGB(84, 158, 158, 158))
        )
      ),
    );
  }
}