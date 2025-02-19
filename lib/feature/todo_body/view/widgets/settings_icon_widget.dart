import 'package:flutter/material.dart';

class SettingsRowidget extends StatelessWidget {
  final Widget icon;
  final String text;
  const SettingsRowidget({
    super.key, 
    required this.icon, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, 
        icon: icon,),
        SizedBox(width: 12,),
        Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
      ],
    );
  }
}