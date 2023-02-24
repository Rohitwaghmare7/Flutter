import 'package:flutter/material.dart';

class A4 extends StatefulWidget {
  const A4({super.key});

  @override
  State<A4> createState() => _A3State();
}

class _A3State extends State<A4> {
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
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Previous'),
              ));
            },
          )
        ],
      ),
    ));
  }
}
