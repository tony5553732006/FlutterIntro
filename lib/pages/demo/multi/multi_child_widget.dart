import 'package:flutter/material.dart';
import 'package:flutter_intro/pages/demo/multi/demo_column.dart';
import 'package:flutter_intro/pages/demo/multi/demo_gridview.dart';
import 'package:flutter_intro/pages/demo/multi/demo_listview.dart';
import 'package:flutter_intro/pages/demo/multi/demo_row.dart';
import 'package:flutter_intro/pages/demo/multi/demo_scaffold.dart';

class MultiChildWidgetPage extends StatefulWidget {
  const MultiChildWidgetPage({Key? key}) : super(key: key);
  static const routeName = "multiChildWidget";

  @override
  _MultiChildWidgetPageState createState() => _MultiChildWidgetPageState();
}

class _MultiChildWidgetPageState extends State<MultiChildWidgetPage> {

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
              onBtnClicked(ScaffoldDemo.routeName);
            },
            child: const Text('Scaffold Demo'),
          ),
          ElevatedButton(
            onPressed: () {
              onBtnClicked(ColumnDemo.routeName);
            },
            child: const Text('Column Demo'),
          ),
          ElevatedButton(
            onPressed: () {
              onBtnClicked(RowDemo.routeName);
            },
            child: const Text('Row Demo'),
          ),
          ElevatedButton(
            onPressed: () {
              onBtnClicked(ListViewDemo.routeName);
            },
            child: const Text('ListView Demo'),
          ),
          ElevatedButton(
            onPressed: () {
              onBtnClicked(GridViewDemo.routeName);
            },
            child: const Text('GridView Demo'),
          ),
        ],
      ),
    );
  }
}
