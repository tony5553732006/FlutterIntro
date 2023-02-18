import 'package:flutter/material.dart';
import 'package:flutter_intro/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);
  static const routeName = "/first_page";

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //一般跳轉
            // Navigator.pushNamed(
            //     context,
            //     '/second_page'
            // );

            //帶參數
            Navigator.pushNamed(
                context,
                '/second_page',
                arguments: {
              'value01' : 'Hello World!!'
            });
          },
          child: const Text('跳轉'),
        ),
      ),
    );
  }
}
