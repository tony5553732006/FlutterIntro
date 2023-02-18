import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
  static const routeName = "/second_page";

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    String value01 = '';
    dynamic arg = ModalRoute.of(context)?.settings.arguments;
    if (arg != null) {
      value01 = arg['value01'];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Text(value01),
      ),
    );
  }
}
