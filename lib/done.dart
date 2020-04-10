import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/task.dart';

class Done extends StatefulWidget {
  String text;
  Done(this.text);

  @override
  State<StatefulWidget> createState() {
    return _DoneState(text);
  }
}

class _DoneState extends State<Done> {
  String text;
  List<Task> litems = List<Task>();
  _DoneState(this.text);
  bool check1 = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        foregroundDecoration: BoxDecoration(color: Color(0x60FDFDFD)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.green[600],
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
                  litems.add(Task(text, false));
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
