import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/feature/authentication/view/pages/signup_page.dart';
import 'package:todo/feature/todo_body/view/pages/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => TodoProvider())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SignupPage());
  }
}
