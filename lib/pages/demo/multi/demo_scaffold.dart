import 'package:flutter/material.dart';

class ScaffoldDemo extends StatelessWidget {
  const ScaffoldDemo({Key? key}) : super(key: key);
  static const routeName = "/demo_scaffold";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Demo'),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(Icons.home),
        // ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        ],
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: UnconstrainedBox(
                // 解除父级的大小限制
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    'assets/images/demo_image3.jpg',
                  ),
                ),
              ),
            ),
            ListTile( // 子項
              leading: const Icon(Icons.settings),
              title: const Text("設定"),
              onTap: () {},
            ),
            ListTile( // 子項
              leading: const Icon(Icons.person),
              title: const Text("個人"),
              onTap: () {},
            ),
            ListTile( // 子項
              leading: const Icon(Icons.feedback),
              title: const Text("反饋"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
