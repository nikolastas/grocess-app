import 'package:flutter/material.dart';
import 'quote.dart';
void main() => runApp(MaterialApp(
  home: QuoteList(),
   ) 
   );

class QuoteList extends StatefulWidget {
  const QuoteList({ Key? key }) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'You re Amazing buddy. ', author: 'Nikos'),
    Quote(author: 'Oscar', text: 'If only school curriculum were like this'),
    Quote(text: 'and teachers  were like you world could be', author: 'me')
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor : Colors.redAccent,
      ),
      body: Column(
        children: quotes.map( (quote) => QuoteCard(quote: quote)).toList(), 
        )
    );
  }
}

class QuoteCard extends StatelessWidget {
  

  final Quote? quote;
  QuoteCard({this.quote});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              )
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[900],
              ),
            )
          ],
        ),
      ),
    );
  }
}