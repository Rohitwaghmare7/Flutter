import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<StatefulWidget> createState() {
    return Mystate();
  }
}

class Mystate extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(child: Builder(
          builder: (context) {
            return (ListView(
              children: [
                DrawerHeader(
                  child: Text(
                    "Header",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  decoration: BoxDecoration(color: Colors.blue),
                ),
                ListTile(
                  onTap: () {
                    Fluttertoast.showToast(msg: "option1");
                    Navigator.pop(context);
                  },
                  title: Text('option1'),
                  leading: Icon(Icons.security_update_warning),
                ),
              ],
            ));
          },
        )),
        appBar: AppBar(title: Text("Drawres")),
      ),
    ));
  }
}
