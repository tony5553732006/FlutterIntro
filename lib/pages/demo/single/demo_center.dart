import 'package:flutter/material.dart';

class CenterDemo extends StatelessWidget {
  const CenterDemo({Key? key}) : super(key: key);
  static const routeName = '/demo_center';

  Widget _buildCenter() {
    return const Center(
      child: Text('Hello World'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Center Demo'),
      ),
      body: _buildCenter(),
    );
  }
}
