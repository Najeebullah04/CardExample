import 'package:flutter/material.dart';
import 'quote.dart';
void main(){
  runApp( const MaterialApp(
    home:CardExample() ,
  ));
}

class CardExample extends StatefulWidget {
  const CardExample({super.key});
  @override
  State<CardExample> createState() => _CardExampleState();
}

class _CardExampleState extends State<CardExample> {
  List<Quote> quote =[
    Quote(text: 'Kindness is a mark of faith, and whoever is not kind has no faith',author: 'Prophet Muhammad'),
    Quote(text: 'The strongest amongst you is the one who controls his anger',author: 'Imam Ali'),
    Quote(text: 'I learned from Hussain how to achieve victory while being oppressed',author: 'Mahatma Gandhi'),
    Quote(text: 'A fools mind is at the mercy of his tongue and a wise mans tongue is under the control of his mind',author: 'Imam Ali'),
  ];
  Widget quoteTemplate (quote){
    return Card(
      margin: EdgeInsets.all(10.0),
      child:Column(
        children: [
          Text(quote.author, 
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(quote.text,
            style: TextStyle(
              fontSize: 17.0,
            ),),
          ),
          Row(
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

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('Card'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 131, 210, 133),
      ),
      body: Column(children:quote.map((e) {
        return quoteTemplate(e);
         }).toList(),
        )
      );
  }
 }