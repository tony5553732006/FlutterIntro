import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({Key? key}) : super(key: key);
  static const routeName = "/demo_row";

  Widget _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
        title: const Text('Row Demo'),
      ),
      body: _buildRow(),
    );
  }
}
