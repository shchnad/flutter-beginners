import 'package:flutter/material.dart';
import 'package:flutter_app/quote.dart';
import 'package:flutter_app/QuoteCard.dart';


void main() => runApp(MaterialApp(
  home: MyApp()
));


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quote> quotes = [
    // Quote ({author:'Tolstoi', book:'Anna Karenina'}),
    // Quote ({author:'Chehov', book: 'Revizor'}),
    // Quote ({author:'Mine Reid', book:'Last of Moghikhan'}),
    Quote ('Tolstoi', 'Anna Karenina' ),
    Quote ('Chehov', 'Revizor' ),
    Quote ('Mine Reid', 'Last of Moghikhan'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Books to read'),
    ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: quotes.map( (item)=> QuoteCard(
              item,
              (){setState( (){quotes.remove(item);} );}
              )
          ).toList()
        ),
      ),
    );
  }
}



