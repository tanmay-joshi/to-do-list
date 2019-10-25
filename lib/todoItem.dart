import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  String newValue;
  Function delete;

  TodoItem(this.newValue, this.delete);

  @override
  State<StatefulWidget> createState() {
    return _TodoItem(newValue, delete);
  }
}

class _TodoItem extends State<TodoItem> {
  final String newValue;
  final Function delete;
  _TodoItem(this.newValue, this.delete);

  @override
  build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(newValue),
        RaisedButton(
          child: Text("Delete"),
          onPressed: () {
            delete(newValue);
          },
        ),
        RaisedButton(
          child: Text("Done"),
          onPressed: () {
            print(newValue);
          },
        ),
      ],
    );
  }
}
