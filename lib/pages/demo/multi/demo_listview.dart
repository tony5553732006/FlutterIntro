import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);
  static const routeName = "/demo_listView";

  Widget _buildListView1() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text("使用者1"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text("使用者2"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text("使用者3"),
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildListView2() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 30,
        itemBuilder: (context, index) {
          var num = index + 1;
          return  ListTile(
            leading: const Icon(Icons.person),
            title: Text("使用者$num"),
            onTap: () {},
          );
        });
  }

  Widget _buildListView3() {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: 20,
      itemBuilder: (context, index) {
        var num = index + 1;
        return  ListTile(
          leading: const Icon(Icons.person),
          title: Text("使用者$num"),
          onTap: () {},
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          width: double.infinity,
          height: 1,
          color: Colors.black,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Demo'),
      ),
      body: _buildListView1(),
    );
  }
}
