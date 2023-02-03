import 'package:flutter/material.dart';

class AlignDemo extends StatelessWidget {
  const AlignDemo({Key? key}) : super(key: key);
  static const routeName = "/demo_align";

  Widget _buildAlign() {
    return const Align(
      alignment: Alignment.bottomCenter,
      child: Text('Hello World'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align Demo'),
      ),
      body: _buildAlign(),
    );
  }
}
