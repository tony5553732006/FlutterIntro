import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);
  static const routeName = '/demo_image';

  Widget _buildAssetImage() {
    // fit 屬性用法: https://www.jianshu.com/p/946e09ee3dd8
    return const Image(
      width: 200,
      height: 200,
      fit: BoxFit.fill,
      image: AssetImage('assets/images/demo_image1.jpg'),
    );
    // return Image.asset(
    //   'assets/images/demo_image1.jpg',
    //   width: 200,
    //   height: 200,
    //   fit: BoxFit.fill,
    // );
  }

  Widget _buildNetworkImage() {
    return Image.network(
      'https://kx2.zyosoft.cn/22081215544308170828_1024X1024.jpg',
      width: 200,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
                  : null,
            ));
      },
    );
  }

  Widget _buildLocalImage() {
    // return Image.file(
    //   File('/storage/emulated/0/Download/demo_image2.jpg'),
    //   width: 200,
    //   height: 200,
    // );

    // 取得儲存空間存取權限
    return FutureBuilder<bool>(
        future: _requestPermission(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.data == true) {
            return Image.file(
              File('/storage/emulated/0/Download/demo_image2.jpg'),
              width: 200,
              height: 200,
            );
          } else {
            return Container();
          }
        });
  }

  Future<bool> _requestPermission() async {
    var status = await Permission.storage.request();
    return status.isGranted;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Demo'),
      ),
      body: Center(
        child: _buildAssetImage(),
      ),
    );
  }
}
