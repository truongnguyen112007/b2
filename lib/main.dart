import 'package:b2/categories/main_list.dart';
import 'package:flutter/material.dart';
import 'categories/appbarwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'categories',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: SafeArea(
              child: Column(
        children: [
          AppBarWidget(),
          Expanded(child: MainList()),
        ],
      ))),
    );
  }
}
