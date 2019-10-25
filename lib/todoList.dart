import 'package:flutter/material.dart';

import './todoItem.dart';

class TodoList extends StatelessWidget {
  final List listItems;
  final Function delete;

  TodoList(this.listItems, this.delete);

  @override
  Widget build(BuildContext context) {
    return Column(
        children:
            listItems.map((element) => TodoItem(element, delete)).toList());
  }
}
