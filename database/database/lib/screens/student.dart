import 'package:flutter/material.dart';
import 'package:database/screens/databaseServices.dart';
import 'package:database/screens/StudentData.dart';

class Students extends StatefulWidget {
  const Students({super.key});
  @override
  State<Students> createState() => _StudentsState();
}

List<DataRow> rowss = [];

class _StudentsState extends State<Students> {
  var c1 = TextEditingController();
  var c2 = TextEditingController();
  var c3 = TextEditingController();

  List<Student> students = [];

  DatabaseServices db = DatabaseServices();
  @override
  void initState() {
    super.initState();
    db.initDatabase();
  }

  getrows() async {
    var rows = await db.selectAllrecord();

    setState(() {
      for (int i = 0; i < rows.length; i++) {
        Map<String, Object?> element = rows[i];

        var id = element['id'];
        var name = element['name'];
        var age = element['age'];

        rowss.add(DataRow(cells: [
          DataCell(Text("$id")),
          DataCell(Text("$name")),
          DataCell(Text("$age"))
        ]));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('database'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: c1,
                    decoration: InputDecoration(
                        label: Text('Id'), border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: c2,
                    decoration: InputDecoration(
                        label: Text('Name'), border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: c3,
                    decoration: InputDecoration(
                        label: Text('age'), border: OutlineInputBorder()),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var s1 = Student(
                                  id: int.parse(c1.text),
                                  name: c2.text,
                                  age: int.parse(c3.text));
                              db.insertStudent(s1);
                              students.add(s1);
                            });
                          },
                          child: Text("Save")),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var s1 = Student(
                                  id: int.parse(c1.text),
                                  name: c2.text,
                                  age: int.parse(c3.text));
                              db.updateStudent(s1);
                            });
                          },
                          child: Text("update")),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              getrows();
                            });
                          },
                          child: Text("select")),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              db.deleteStudent(int.parse(c1.text));
                            });
                          },
                          child: Text("delete")),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              c1.text = '';
                              c2.text = '';
                              c3.text = '';
                            });
                          },
                          child: Text("clear")),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text("id")),
                          DataColumn(label: Text("Name")),
                          DataColumn(label: Text("Age"))
                        ],
                        rows: rowss,
                        border: TableBorder(
                            horizontalInside: BorderSide(width: 5),
                            verticalInside: BorderSide(width: 5),
                            left: BorderSide(width: 5),
                            right: BorderSide(width: 5),
                            top: BorderSide(width: 5),
                            bottom: BorderSide(width: 5)),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    ));
  }
}
