import 'package:flutter/material.dart';
import 'package:flutter_intro/pages/demo/basic/demo_button.dart';
import 'package:flutter_intro/pages/demo/basic/demo_image.dart';
import 'package:flutter_intro/pages/demo_container.dart';
import 'package:flutter_intro/pages/demo/basic/demo_icon.dart';
import 'package:flutter_intro/pages/demo/basic/demo_text.dart';

class BasicWidgetPage extends StatefulWidget {
  const BasicWidgetPage({Key? key}) : super(key: key);
  static const routeName = "/basicWidget";

  @override
  _BasicWidgetPageState createState() => _BasicWidgetPageState();
}

class _BasicWidgetPageState extends State<BasicWidgetPage> {

  void onBtnClicked(String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Widget Demo'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ElevatedButton(
            onPressed: () {
              onBtnClicked(TextDemo.routeName);
            },
            child: const Text('Text Demo'),
          ),
          ElevatedButton(
            onPressed: () {
              onBtnClicked(ButtonDemo.routeName);
            },
            child: const Text('Button Demo'),
          ),
          ElevatedButton(
            onPressed: () {
              onBtnClicked(IconDemo.routeName);
            },
            child: const Text('Icon Demo'),
          ),
          ElevatedButton(
            onPressed: () {
              onBtnClicked(ImageDemo.routeName);
            },
            child: const Text('Image Demo'),
          ),
        ],
      ),
    );
  }
}
