import 'package:flutter/material.dart';

const _style = const TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0);

Widget _buildCard(BuildContext ctx, int i) {
  if (i > 50) {
    return null;
  }

  Widget text = new Text(i.toString(), style: _style);
  return new Card(child: new Center(child: text));
}

void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      body: new GridView.custom(
        gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150.0, childAspectRatio: 3 / 5),
        childrenDelegate: new SliverChildBuilderDelegate(_buildCard),
      ),
    ),
  ));
}
