import 'package:flutter/material.dart';

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({Key? key}) : super(key: key);
  static const routeName = "/demo_padding";

  Widget _buildPadding() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text('Hello World'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Demo'),
      ),
      body: Container(
        color: Colors.red,
        child: _buildPadding(),
      ),
    );
  }
}
