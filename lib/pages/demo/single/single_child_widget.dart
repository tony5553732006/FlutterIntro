import 'package:flutter/material.dart';
import 'package:flutter_intro/pages/demo/single/demo_align.dart';
import 'package:flutter_intro/pages/demo/single/demo_center.dart';
import 'package:flutter_intro/pages/demo/single/demo_container.dart';
import 'package:flutter_intro/pages/demo/single/demo_padding.dart';
import 'package:flutter_intro/pages/demo/single/demo_single_child_scrollview.dart';

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
          ElevatedButton(
            onPressed: () {
              onBtnClicked(PaddingDemo.routeName);
            },
            child: const Text('Padding Demo'),
          ),
          ElevatedButton(
            onPressed: () {
              onBtnClicked(CenterDemo.routeName);
            },
            child: const Text('Center Demo'),
          ),
          ElevatedButton(
            onPressed: () {
              onBtnClicked(AlignDemo.routeName);
            },
            child: const Text('Align Demo'),
          ),
          ElevatedButton(
            onPressed: () {
              onBtnClicked(SingleChildScrollViewDemo.routeName);
            },
            child: const Text('SingleChildScrollViewDemo Demo'),
          ),
        ],
      ),
    );
  }
}
