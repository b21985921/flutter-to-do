import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/done.dart';
import 'package:myapp/main.dart';

class Task extends StatefulWidget {
  String text;
  bool check1 = false;

  Task(this.text, this.check1);

  @override
  State<StatefulWidget> createState() {
    return _TaskState(text, check1);
  }
}

class _TaskState extends State<Task> {
  String text;
  List<Done> ditems = List<Done>();
  bool check1 = false;
  /*
  bool get isFinished {
    return check1;
  }*/

  _TaskState(this.text, this.check1);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.red[600],
            border: Border.all(color: Colors.black)),
        //color: Colors.amber[200],
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Checkbox(
              value: check1,
              onChanged: (bool checkBox) {
                setState(() {
                  check1 = checkBox;
                  ditems.add(Done(text));
                });
              },
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}

List<Done> getDoneList(ditems) {
  return ditems;
}
