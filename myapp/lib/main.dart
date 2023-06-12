import 'package:flutter/material.dart';
import 'quate.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int level = 0;
  List<Quote> names = [
    Quote(text: 'Text 1', author: 'Author1'),
    Quote(text: 'Text 2', author: 'Author2'),
    Quote(text: 'Text 3', author: 'Author3'),
    Quote(text: 'Text 4', author: 'Author4'),
  ];

  Widget quoteTemplete(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        children: [
          Text(quote.text,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey[600],
          ),
          ),
          SizedBox(height: 6.0,),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],
            ),
          ),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Simple Id'),
        backgroundColor: Colors.grey[600],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img1.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.red,
            ),
            Text(
              'Name',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              ' My Name',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Text(
            //   'Level',
            //   style: TextStyle(
            //     fontSize: 20.0,
            //     color: Colors.blue,
            //     fontWeight: FontWeight.bold,
            //     letterSpacing: 2.0,
            //   ),
            // ),
            // SizedBox(
            //   height: 10.0,
            // ),
            // Text(
            //   '$level',
            //   style: TextStyle(
            //     fontSize: 20.0,
            //     color: Colors.black,
            //     fontWeight: FontWeight.bold,
            //     letterSpacing: 2.0,
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Row(
            //   children: [
            //     Icon(
            //       Icons.email,
            //       color: Colors.grey[900],
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     // Text(
            //     //   'manm@gmail.com',
            //     //   style: TextStyle(
            //     //     color: Colors.red,
            //     //     fontSize: 20.0,
            //     //     fontWeight: FontWeight.w100,
            //     //   ),
            //     // )
            //   ],
            // ),
            Column(
                children:
                    names.map((e) =>quoteTemplete(e)).toList()
          
        ),
          ],
      ),
    
    )
    );
  }
}
