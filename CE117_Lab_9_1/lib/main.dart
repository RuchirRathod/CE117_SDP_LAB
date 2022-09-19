import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_dart.dart';

void main() => runApp(MaterialApp(
  home: Echolist(),
));

class Echolist extends StatefulWidget {
  const Echolist({Key? key}) : super(key: key);

  @override
  State<Echolist> createState() => _EcholistState();
}

class _EcholistState extends State<Echolist> {

  /*List<String> quotes = [
    "It's more important to master the cards you're holding than to complain about the ones your opponents were dealt",
    'The courage to walk into the Darkness, but the strength to return to the Light',
    "Don't wish it were easier, wish you were better. "
  ];*/

  List<Quote> quotes = [
    Quote(text: "It's more important to master the cards you're holding than to complain about the ones your opponents were dealt",author: 'Grimsley'),
    Quote(text: 'The courage to walk into the Darkness, but the strength to return to the Light', author: 'Parables of the Allspring'),
    Quote(text: "Don't wish it were easier, wish you were better. ",author: 'Cheif'),
  ];

  // Widget quoteTemplate(quote){
  //   return QuoteCard(quote: quote,delete: );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),

      body: Column(
        //children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}