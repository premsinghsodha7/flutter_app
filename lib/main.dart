
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: ListData(),
));

class ListData extends StatefulWidget {
  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {

  List<String> texts = [
    'Place there item One',
    'Place there item Two',
    'Place there item Three'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Awesome List'),
        centerTitle: true,
        elevation: 0.0
      ),
      body: Column(
        children: texts.map((t) => Text(t)).toList(),
      )
    );
  }
}




