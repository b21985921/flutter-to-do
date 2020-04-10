import 'package:flutter/material.dart';
import 'package:myapp/task.dart';

class AddTask extends StatelessWidget {
  List<Task> litems = List<Task>();
  String text;
  AddTask(this.litems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            TextField(
              onChanged: (String value) {
                text = value;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'To-Do',
              ),
            ),
            FlatButton(
              onPressed: () {
                print(text);
                litems.add(Task(text, false));
                // bi önceki aktiviteye götürür
                Navigator.pop(context);
              },
              child: Text("Add"),
              color: Colors.blue,
            )
          ])),
    );
  }
}
