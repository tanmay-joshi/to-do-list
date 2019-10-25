import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String newValue;
  final Function delete;
  TodoItem(this.newValue, this.delete);

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
