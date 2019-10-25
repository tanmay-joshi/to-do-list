import 'package:flutter/material.dart';

import './todoList.dart';
import './addItem.dart';

class TodoListManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TodoListManager();
  }
}

class _TodoListManager extends State<TodoListManager> {
  List<String> _listItems = [];

  void _updateItem(itemValue) {
    setState(() {
      _listItems.add(itemValue);
    });
    print(_listItems);
  }

  void _deleteItem(x) {
    print(x);
    setState(() {
      _listItems.removeWhere((item) => item == x);
    });
    print(_listItems);
  }

  @override
  build(context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("Update"),
          onPressed: () {
            print(_listItems);
          },
        ),
        TodoList(_listItems, _deleteItem),
        AddItem(_updateItem)
      ],
    );
  }
}
