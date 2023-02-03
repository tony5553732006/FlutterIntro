import 'package:flutter_intro/pages/demo/basic/basic_widget.dart';
import 'package:flutter_intro/pages/demo/basic/demo_button.dart';
import 'package:flutter_intro/pages/demo/basic/demo_image.dart';
import 'package:flutter_intro/pages/demo/single/single_child_widget.dart';
import 'package:flutter_intro/pages/demo_container.dart';
import 'package:flutter_intro/pages/demo/basic/demo_icon.dart';
import 'package:flutter_intro/pages/demo/basic/demo_text.dart';

var routes = {
  //基礎組件範例
  BasicWidgetPage.routeName: (context) => const BasicWidgetPage(),
  TextDemo.routeName: (context) => const TextDemo(),
  ButtonDemo.routeName: (context) => const ButtonDemo(),
  IconDemo.routeName: (context) => const IconDemo(),
  ImageDemo.routeName: (context) => const ImageDemo(),
  //單一子元件組件範例
  SingleChildWidgetPage.routeName: (context) => const SingleChildWidgetPage(),
  ContainerDemo.routeName: (context) => const ContainerDemo(),
};