import 'package:flutter/material.dart';

class Dpanel extends StatefulWidget {
  const Dpanel({super.key});

  @override
  State<Dpanel> createState() => _DpanelState();
}

class Item {
  String title = "";
  String subtitle = "";
  Item({required this.title, required this.subtitle});
}

class _DpanelState extends State<Dpanel> {
  List<bool> states = [false, false, false];

  ExpansionPanelList geexpansionpannel() {
    List<Item> items = [
      Item(title: "title1", subtitle: "subtitle1"),
      Item(title: "title2", subtitle: "subtitle2"),
      Item(title: "title3", subtitle: "subtitle3"),
    ];
    List<ExpansionPanel> panels = [];

    for (int i = 0; i < items.length; i++) {
      panels.add(ExpansionPanel(
          isExpanded: states[i],
          headerBuilder: (context, isExpanded) {
            return (ListTile(
              title: Text(items[i].title),
            ));
          },
          body: ListTile(
              title: Text(items[i].title),
              subtitle: Text(
                items[i].subtitle,
              ))));
    }
    return (ExpansionPanelList(
      children: panels,
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          states[panelIndex] = !isExpanded;
        });
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dynamic panels"),
        ),
        body: Column(
          children: [geexpansionpannel()],
        ),
      ),
    ));
  }
}
