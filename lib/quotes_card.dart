import 'package:flutter/material.dart';
import 'Quotes.dart';

class QuoteCard extends StatelessWidget {

  final Quotes quote;
  final Function delete;

  QuoteCard(this.quote, {this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      color: Colors.red[300],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                quote.quote,
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 15.0,
                ),
              ),
            ),
            Divider(height: 20.0, thickness: 2.0, color: Colors.red, indent: 120.0, endIndent: 50.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 50.0, 0.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  quote.author,
                  style: TextStyle(
                    letterSpacing: 2.0,
                    color: Colors.lightGreen[200],
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: FlatButton.icon(
                textColor: Colors.redAccent,
                color: Colors.grey[200],
                onPressed: delete,
                label: Text("Delete"),
                icon: Icon(Icons.delete),
              ),
            )
          ],
        ),
      ),
    );
  }
}