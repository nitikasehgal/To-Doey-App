import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task.dart';
import 'package:todoey_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String? newtexttitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add task",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              onChanged: (newtext) {
                newtexttitle = newtext;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                onPressed: () {
                  final task = Task(taskname: newtexttitle!);
                  Provider.of<TaskData>(context, listen: false)
                      .addtask(newtexttitle!);
                  Navigator.pop(context);
                },
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
