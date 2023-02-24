import 'package:flutter/material.dart';

class A3 extends StatefulWidget {
  const A3({super.key});

  @override
  State<A3> createState() => _A3State();
}

class _A3State extends State<A3> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text("Named Parameter")),
      body: Column(
        children: [
          Builder(
            builder: (context) {
              return (ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
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
