import 'package:flutter/material.dart';

import 'target_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3'),
      ),
      body: GestureDetector(
        child: Container(color: Colors.blue),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TargetScreen()),
          );
        },
      ),
    );
  }
}
