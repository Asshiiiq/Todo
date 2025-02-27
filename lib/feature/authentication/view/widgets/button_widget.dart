import 'package:flutter/material.dart';
import 'package:todo/feature/todo_body/view/pages/Categories_page.dart';

class CommonButtonWidget extends StatelessWidget {
  const CommonButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoriesPage();
            },
          ),
        );
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.indigo),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 18, bottom: 18),
            child: Text("CONTINUE", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
