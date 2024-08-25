import 'package:flutter/material.dart';
import 'package:to_do_app/view/AddTask.dart';
import './view/home.dart';

void main() {
  runApp(const todo());
}

class todo extends StatelessWidget {
  const todo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
