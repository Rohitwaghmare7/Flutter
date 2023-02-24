import 'package:flutter/material.dart';

class C2 extends StatefulWidget {
  const C2({super.key});

  @override
  State<C2> createState() => _C2State();
}

class Student {
  String name = '';
  String age = '';

  Student({required this.name, required this.age});
}

class _C2State extends State<C2> {
  List<Card> gitStudents() {
    List<Student> students = [
      Student(name: "Rohit", age: "21"),
      Student(name: "Rafat", age: "20"),
      Student(name: "Sakshi", age: "21")
    ];

    List<Card> cards = [];

    for (int i = 0; i < students.length; i++) {
      cards.add(Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              ListTile(
                title: Text(students[i].name),
                subtitle: Text(students[i].age),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Edit3'))
                ],
              )
            ],
          )));
    }
    return (cards);
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Static Cards'),
        ),
        body: Column(
          children: gitStudents(),
        ),
      ),
    ));
  }
}
