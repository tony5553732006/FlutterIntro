import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);
  static const routeName = "/demo_container";

  Widget _buildContainer1() {
    return Container(
      color: Colors.red,
      width: 200,
      height: 150,
      // alignment: Alignment.center,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: const Text('Hello World'),
    );
  }

  Widget _buildContainer2() {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.fromLTRB(25, 25, 0, 0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.yellow,
            width: 5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: const DecorationImage(
              image: AssetImage('assets/images/demo_image1.jpg')),
          boxShadow: const [
            BoxShadow(
                color: Colors.black,
                offset: Offset(20,20),
                blurRadius: 10
            )
          ]
      ),
      // transform: Matrix4.rotationZ(.5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Demo'),
      ),
      body: _buildContainer2(),
    );
  }
}
