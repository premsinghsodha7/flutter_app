
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/quotes_card.dart';
import 'Quotes.dart';

void main() => runApp(MaterialApp(
  home: ListData(),
));

class ListData extends StatefulWidget {
  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {

  List<Quotes> quotes = [
    Quotes('“A writer is someone for whom writing is more difficult than it is for other people.”', 'Thomas Mann'),
    Quotes('“A good novel tells us the truth about its hero; but a bad novel tells us the truth about its author.”', 'G.K. Chesterton'),
    Quotes('“I\'ve got the key to my castle in the air, but whether I can unlock the door remains to be seen.”', ' Louisa May Alcott')

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Awesome Quotes'),
        centerTitle: true,
        elevation: 0.0
      ),
      body: Column(
        children: quotes.map((q) => QuoteCard(
          q,
          delete: (){
            setState(() {
              quotes.remove(q);
            });
          }
        )).toList(),
      )
    );
  }
}






