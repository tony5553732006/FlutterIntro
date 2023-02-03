import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({Key? key}) : super(key: key);
  static const routeName = "/demo_column";

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.green,
          width: 100,
          height: 100,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Demo'),
      ),
      body: _buildColumn(),
    );
  }
}
