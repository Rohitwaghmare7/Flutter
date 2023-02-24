import 'package:datatransfer/data%20transfer/dataTransfer1.dart';
import 'package:flutter/material.dart';

class A6 extends StatefulWidget {
  const A6({super.key});

  @override
  State<A6> createState() => _A3State();
}

class _A3State extends State<A6> {
  @override
  Widget build(BuildContext context) {
    Myargv args = ModalRoute.of(context)?.settings.arguments as Myargv;

    return (Scaffold(
      appBar: AppBar(title: Text("Named Parameter")),
      body: Column(
        children: [
          Builder(
            builder: (context) {
              return (ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Previous'),
              ));
            },
          ),
          Text("Argv is ${args.data}")
        ],
      ),
    ));
  }
}
