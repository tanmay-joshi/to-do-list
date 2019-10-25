import "package:flutter/material.dart";

class AddItem extends StatelessWidget {
  final Function updateItem;

  AddItem(this.updateItem);

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(border: OutlineInputBorder()),
      controller: controller,
      onSubmitted: (controller) {
        updateItem(controller);
      },
    );
  }
}
