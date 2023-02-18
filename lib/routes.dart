
import 'package:flutter_intro/pages/demo/basic/basic_widget.dart';
import 'package:flutter_intro/pages/demo/basic/demo_button.dart';
import 'package:flutter_intro/pages/demo/basic/demo_image.dart';
import 'package:flutter_intro/pages/demo/first_page.dart';
import 'package:flutter_intro/pages/demo/multi/demo_column.dart';
import 'package:flutter_intro/pages/demo/multi/demo_gridview.dart';
import 'package:flutter_intro/pages/demo/multi/demo_listview.dart';
import 'package:flutter_intro/pages/demo/multi/demo_row.dart';
import 'package:flutter_intro/pages/demo/multi/demo_scaffold.dart';
import 'package:flutter_intro/pages/demo/multi/multi_child_widget.dart';
import 'package:flutter_intro/pages/demo/single/demo_align.dart';
import 'package:flutter_intro/pages/demo/single/demo_center.dart';
import 'package:flutter_intro/pages/demo/single/demo_padding.dart';
import 'package:flutter_intro/pages/demo/single/demo_single_child_scrollview.dart';
import 'package:flutter_intro/pages/demo/single/single_child_widget.dart';
import 'package:flutter_intro/pages/demo/single/demo_container.dart';
import 'package:flutter_intro/pages/demo/basic/demo_icon.dart';
import 'package:flutter_intro/pages/demo/basic/demo_text.dart';
import 'package:flutter_intro/pages/second_page.dart';

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
  PaddingDemo.routeName: (context) => const PaddingDemo(),
  CenterDemo.routeName: (context) => const CenterDemo(),
  AlignDemo.routeName: (context) => const AlignDemo(),
  SingleChildScrollViewDemo.routeName: (context) => const SingleChildScrollViewDemo(),
  //多子元件組件範例
  MultiChildWidgetPage.routeName: (context) => const MultiChildWidgetPage(),
  ScaffoldDemo.routeName: (context) => const ScaffoldDemo(),
  ColumnDemo.routeName: (context) => const ColumnDemo(),
  RowDemo.routeName: (context) => const RowDemo(),
  ListViewDemo.routeName: (context) => const ListViewDemo(),
  GridViewDemo.routeName: (context) => const GridViewDemo(),
  //路由範例
  FirstPage.routeName: (context) => const FirstPage(),
  SecondPage.routeName: (context) => const SecondPage(),
};