import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool ischecked;
  final String tasktitle;
  final void Function(bool?)? checkboxcallback;
  final void Function() longpresscallback;
  TaskTile(this.ischecked, this.tasktitle, this.checkboxcallback,
      this.longpresscallback);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: longpresscallback,
      child: ListTile(
        title: Text(
          tasktitle,
          style: TextStyle(
              decoration:
                  ischecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: ischecked,
          onChanged: checkboxcallback,
        ),
      ),
    );
  }
}
