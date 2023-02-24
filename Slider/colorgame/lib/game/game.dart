import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<StatefulWidget> createState() {
    return Mystate();
  }
}

class Mystate extends State<Game> {
  double A = 255;
  double R = 0;
  double G = 0;
  double B = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor:
              Color.fromARGB(A.toInt(), R.toInt(), G.toInt(), B.toInt()),
          body: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'RED',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                Slider(
                  min: 0,
                  max: 255,
                  value: R,
                  onChanged: (value) {
                    setState(() {
                      R = value;
                    });
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Green',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                Slider(
                  min: 0,
                  max: 255,
                  value: G,
                  onChanged: (value) {
                    setState(() {
                      G = value;
                    });
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Blue',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                Slider(
                  min: 0,
                  max: 255,
                  value: B,
                  onChanged: (value) {
                    setState(() {
                      B = value;
                    });
                  },
                )
              ],
            ),
          )),
    ));
  }
}
