import 'package:flutter/material.dart';
import 'package:flutter_intro/pages/demo_container.dart';

class SingleChildWidgetPage extends StatefulWidget {
  const SingleChildWidgetPage({Key? key}) : super(key: key);
  static const routeName = "/singleChildWidget";

  @override
  _SingleChildWidgetPageState createState() => _SingleChildWidgetPageState();
}

class _SingleChildWidgetPageState extends State<SingleChildWidgetPage> {

  void onBtnClicked(String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Child Widget Demo'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ElevatedButton(
            onPressed: () {
              onBtnClicked(ContainerDemo.routeName);
            },
            child: const Text('Container Demo'),
          ),
        ],
      ),
    );
  }
}
