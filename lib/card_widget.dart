
import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteTempletWidget extends StatelessWidget {
  

  final Quote quote;
  final Function delete;

  const QuoteTempletWidget({
    super.key,
    required this.quote,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child:Column(
        children: [
          Text(quote.author, 
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(quote.text,
            style:const  TextStyle(
              fontSize: 17.0,
            ),),
          ),
          ElevatedButton.icon(onPressed:()=> delete(), icon:const  Icon( Icons.cancel), label:const  Text('remove'))
        ],
      )
    );
  }
}