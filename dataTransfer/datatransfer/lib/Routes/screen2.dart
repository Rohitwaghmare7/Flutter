import 'package:flutter/material.dart';
import 'package:datatransfer/Routes/screen1.dart';

class A2 extends StatefulWidget {
  const A2({super.key});

  @override
  State<A2> createState() => _A1State();
}

class _A1State extends State<A2> {
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
                          builder: (context) => A1(),
                        ));
                  },
                  child: Text('Previous'),
                ));
              },
            )
          ],
        ),
      ),
    ));
  }
}
