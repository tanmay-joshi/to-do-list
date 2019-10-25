import 'package:flutter/material.dart';

import './todoListManager.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  build(context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("To Do List"),
      ),
      body: TodoListManager(),
    ));
  }
}
