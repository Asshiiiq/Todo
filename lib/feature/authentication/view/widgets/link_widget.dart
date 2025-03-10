import 'package:flutter/material.dart';
import 'package:todo/feature/authentication/view/pages/signin_page.dart';

class BottomLinkWidget extends StatelessWidget {
  final String Linktext;
  final String text;
  final Navigat;
   const BottomLinkWidget({
    super.key,
    required this.Linktext,
    required this.text, 
    required this.Navigat,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: TextStyle(fontSize: 10)),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Navigat),
            );
          },
          child: Text(
            Linktext,
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
          ),
        ),
      ],
    );
  }
}
