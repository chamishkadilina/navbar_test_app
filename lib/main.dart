import 'package:flutter/material.dart';
import 'package:navbar_test_app/navigation_bar.dart';

void main() {
  runApp(const TypingMaster());
}

class TypingMaster extends StatelessWidget {
  const TypingMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyNavigationBar(),
    );
  }
}
