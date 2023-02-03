import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
  const IconDemo({Key? key}) : super(key: key);
  static const routeName = "/demo_icon";

  Widget _buildIcon() {
    return const Icon(
      Icons.add,
      color: Colors.red,
      size: 50,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Demo'),
      ),
      body: Center(
        child: _buildIcon(),
      ),
    );
  }
}
