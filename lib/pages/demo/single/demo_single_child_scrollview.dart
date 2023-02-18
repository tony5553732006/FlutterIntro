import 'package:flutter/material.dart';

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({Key? key}) : super(key: key);
  static const routeName = "/demo_single_child_scrollview";

  Widget _buildScrollView() {
    return Scrollbar(
      isAlwaysShown: false,
      thickness: 10,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: false,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.orange,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.lightBlue,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView Demo'),
      ),
      body: _buildScrollView(),
    );
  }
}
