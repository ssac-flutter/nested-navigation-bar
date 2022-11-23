import 'package:flutter/material.dart';

class TargetScreen extends StatelessWidget {
  const TargetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('target'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
