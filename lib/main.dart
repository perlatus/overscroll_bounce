import 'package:flutter/material.dart';

const _style = const TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0);

Widget _buildCard(BuildContext ctx, int i) {
  if (i > 15) {
    return null;
  } else if (i == 15) {
    return new Card(child: new Container(color: Colors.red));
  } else if (i == 0) {
    return new Card(child: new Container(color: Colors.green));
  }

  Widget text = new Text(i.toString(), style: _style);
  return new Card(child: new Center(child: text));
}

void main() {
  runApp(
    new MaterialApp(
      home: new Scaffold(
        body: new ListView.builder(itemExtent: 400.0, itemBuilder: _buildCard),
      ),
    ),
  );
}
