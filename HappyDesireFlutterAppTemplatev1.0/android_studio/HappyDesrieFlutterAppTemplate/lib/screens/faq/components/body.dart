import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Item> _data;

  List<Item> generateItems(int numberOfItems) {
    return List.generate(numberOfItems, (int index) {
      return Item(
        headerValue: 'Lorem ipsum dolor sit amet',
        expandedValue:
            'consectetur adipiscing elit. Phasellus a ipsum eget purus rutrum iaculis at id elit. Praesent molestie arcu non pharetra rutrum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras condimentum viverra fringilla. Curabitur ac libero id leo malesuada gravida. Donec tincidunt velit sit amet diam aliquam pharetra. ',
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _data = generateItems(8);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(15),
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _data[index].isExpanded = !isExpanded;
            });
          },
          children: _data.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(
                    item.headerValue,
                    style: GoogleFonts.raleway(fontSize: 17),
                  ),
                );
              },
              body: ListTile(
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
                  child: Text(
                    item.expandedValue,
                    style: GoogleFonts.raleway(),
                  ),
                ),
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}
