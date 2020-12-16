import 'package:flutter/material.dart';
import 'package:flutter_app/quote.dart';


class QuoteCard extends StatelessWidget {
  // const QuoteCard({
  //   Key key,
  // }) : super(key: key);
  final Quote item;
  final Function delete;
  QuoteCard(this.item, this.delete);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
              item.book,
              style: TextStyle(fontSize: 30),
          ),
          Text(
              item.author,
              style: TextStyle(fontSize: 20, color: Colors.blue)
          ),
          SizedBox(height: 8,),
          FlatButton(
            onPressed: delete,
            child: Column(
              children: [
                Icon(Icons.delete),
                Text('delete')
              ],
            ),
      ),
      ]
    ));
  }
}