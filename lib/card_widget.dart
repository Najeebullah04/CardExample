
import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteTempletWidget extends StatelessWidget {
  const QuoteTempletWidget({
    super.key,
    required this.quote,
  });

  final Quote quote;

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
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [ 
            Icon(Icons.thumb_up , color: Colors.blueGrey,),
            SizedBox(width: 5.0,),
            Icon(Icons.thumb_down,color: Colors.blueGrey),
            SizedBox(width: 10.0,),
          ],)
        ],
      )
    );
  }
}