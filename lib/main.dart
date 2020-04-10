import 'package:flutter/material.dart';
import 'package:myapp/addTask.dart';
import 'package:myapp/task.dart';
import 'package:myapp/done.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  bool check = false;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Task> litems = List<Task>();
  //List<Done> ditems = List<Done>();
  List<Done> ditems = List<Done>();

  //ditems.add(Done('Tamamlanan item'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO-DO APP"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'TO-DO',
            style: TextStyle(
                fontSize: 24.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontFamily: 'indieFlower'),
          ),
          TaskList(litems),
          Divider(),
          Text(
            'DONE',
            style: TextStyle(
                fontSize: 24.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontFamily: 'indieFlower'),
          ),
          DoneList(litems),
          //DoneList()
          //taski cağırıoz
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTask(litems)),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}

Widget TaskList(List<Task> litems) {
  if (litems != null) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: false,
          itemCount: litems.length,
          itemBuilder: (BuildContext ctxt, int index) {
            //if (litems[index].)
            //  litems.remove(litems[index]);
            return litems[index];
          }),
    );
  } else {
    return Center(
      child: Text('Yapılacak bir şey yok'),
    );
  }
}

Widget DoneList(List<Task> litems) {
  if (litems != null) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: false,
          itemCount: litems.length,
          itemBuilder: (BuildContext ctxt, int index) {
            if (litems[index].check1) {
              return litems[index];
            }
          }),
    );
  } else {
    return Center(
      child: Text('Yapılmış bir şey yok'),
    );
  }
}
