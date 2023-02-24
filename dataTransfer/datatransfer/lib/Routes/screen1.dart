import 'package:datatransfer/Routes/screen2.dart';
import 'package:flutter/material.dart';

class A1 extends StatefulWidget {
  const A1({super.key});

  @override
  State<A1> createState() => _A1State();
}

class _A1State extends State<A1> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigator Push"),
        ),
        body: Column(
          children: [
            Builder(
              builder: (context) {
                return (ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => A2(),
                        ));
                  },
                  child: Text('Next'),
                ));
              },
            )
          ],
        ),
      ),
    ));
  }
}
