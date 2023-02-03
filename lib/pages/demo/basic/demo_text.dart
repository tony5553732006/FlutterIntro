import 'package:flutter/material.dart';
import 'package:flutter_intro/constants.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);
  static const routeName = "/demo_text";

  Widget _buildText() {
    return const Text(
      'Hello World!!',
      style: TextStyle(
        color: Colors.black,
        fontSize: Constants.textSize_18,
        // fontFamily: 'commonTextStyle'
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Demo'),
      ),
      body: _buildText(),
    );
  }
}
