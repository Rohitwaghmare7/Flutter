import 'package:flutter/material.dart';

class C1 extends StatefulWidget {
  const C1({super.key});

  @override
  State<C1> createState() => _C1State();
}

class _C1State extends State<C1> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Static Cards'),
        ),
        body: Card(
            child: Column(
          children: [
            ListTile(
              title: Text('Card'),
              leading: Icon(Icons.alarm),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [ElevatedButton(onPressed: () {}, child: Text('Edit'))],
            )
          ],
        )),
      ),
    ));
  }
}
