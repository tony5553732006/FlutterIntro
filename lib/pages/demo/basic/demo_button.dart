import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);
  static const routeName = "/demo_button";

  Widget  _buildIconBtn() {
    return IconButton(
      onPressed: () {
        Fluttertoast.showToast(msg: 'IconButton clicked');
      },
      icon: const Icon(Icons.add_a_photo_sharp),
      color: Colors.green,
      iconSize: 50,
    );
  }

  Widget _buildTextBtn() {
    return TextButton(
      onPressed: () {
        Fluttertoast.showToast(msg: 'TextButton clicked');
      },
      child: const Text('按鈕'),
      style: TextButton.styleFrom(
        backgroundColor: Colors.green
      ),
    );
  }

  Widget _buildOutlinedBtn() {
    return OutlinedButton(
      onPressed: () {
        Fluttertoast.showToast(msg: 'OutlinedButton clicked');
      },
      child: const Text('按鈕'),
      style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 5.0, color: Colors.green),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: Colors.orange),
    );
  }

  Widget _buildElevatedBtn() {
    return ElevatedButton(
      onPressed: () {
        Fluttertoast.showToast(msg: 'ElevatedButton Clicked');
      },
      child: const Text('按鈕'),
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shadowColor: Colors.green,
      ),
    );
  }

  Widget _buildFloatingActionBtn() {
    return FloatingActionButton(
      onPressed: () {
        Fluttertoast.showToast(msg: 'FloatingActionButton Clicked');
      },
      child: const Icon(Icons.add),
    );
  }

  Widget _buildInkWell() {
    return GestureDetector(
      // onLongPress: ,
      onLongPress: () {
        Fluttertoast.showToast(msg: 'onLongPress');
      },
      onTap: () {
        Fluttertoast.showToast(msg: '任意widget添加點擊事件');
      },
      child: Container(
        width: 200,
        height: 200,
        // margin: const EdgeInsets.fromLTRB(25, 25, 0, 0),
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Demo'),
      ),
      body: Center(
        child: _buildIconBtn(),
      ),
      floatingActionButton: _buildFloatingActionBtn(),
    );
  }
}
