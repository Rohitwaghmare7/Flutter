import 'package:flutter/material.dart';

class Panel extends StatefulWidget {
  const Panel({super.key});

  @override
  State<Panel> createState() => _PanelState();
}

class _PanelState extends State<Panel> {
  bool f1 = false;
  bool f2 = false;

  ExpansionPanelList getpanelList() {
    return (ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          if (panelIndex == 0) {
            f1 = !isExpanded;
          }
          if (panelIndex == 1) {
            f2 = !isExpanded;
          }
        });
      },
      children: [
        ExpansionPanel(
            isExpanded: f1,
            headerBuilder: (context, isExpanded) {
              return (ListTile(
                title: Text("item1"),
              ));
            },
            body: ListTile(
              title: Text("item2"),
              subtitle: Text("ex item"),
            )),
        ExpansionPanel(
            isExpanded: f2,
            headerBuilder: (context, isExpanded) {
              return (ListTile(
                title: Text("item2"),
              ));
            },
            body: ListTile(
              title: Text("item3"),
              subtitle: Text("ex item"),
            ))
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Panels"),
        ),
        body: Column(
          children: [getpanelList()],
        ),
      ),
    ));
  }
}
