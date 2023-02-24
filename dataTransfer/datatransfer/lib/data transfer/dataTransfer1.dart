import 'package:flutter/material.dart';

class A5 extends StatefulWidget {
  const A5({super.key});

  @override
  State<A5> createState() => _A3State();
}

class Myargv {
  String? data;
  Myargv(this.data);
}

class _A3State extends State<A5> {
  TextEditingController t1 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text("Named Parameter")),
      body: Column(
        children: [
          TextField(
            controller: t1,
          ),
          Builder(
            builder: (context) {
              return (ElevatedButton(
                onPressed: () {
                  var s = t1.text;
                  Navigator.pushNamed(context, '/second', arguments: Myargv(s));
                },
                child: Text('Next'),
              ));
            },
          )
        ],
      ),
    ));
  }
}
