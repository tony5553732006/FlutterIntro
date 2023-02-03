import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);
  static const routeName = "/demo_gridView";

  Widget _buildGridView() {
    return GridView.builder(
      padding: const EdgeInsets.all(0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
      ),
      itemBuilder: (context, index) {
        // return const Icon(Icons.ac_unit);
        return Image.asset('assets/images/demo_image2.jpg');
      },
      itemCount: 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Demo'),
      ),
      body: _buildGridView(),
    );
  }
}
