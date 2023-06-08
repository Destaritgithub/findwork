import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App 1',
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 247, 246, 240),
            appBar: AppBar(
              title: Text('Day 1'),
              leading: Icon(Icons.home),
            ),
            body:Column(
              children: [
                 Text(
                  "Hello!!!",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      backgroundColor: Colors.black26),
                ),
                Center(
                 child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Name',
                        hintText: 'Enter your name'),
                  ),
                ),

                 Center(
                 child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Last Name',
                        hintText: 'Enter your Last name'),
                  ),
                )

              ],
            )

            //Column and Row
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisSize: MainAxisSize.max,
            //   children: [
            //     Container(
            //       height: 50,
            //       width: 90,
            //       margin: EdgeInsets.all(5),
            //       child: Text('Row1'),
            //       alignment: Alignment.center,
            //       decoration: BoxDecoration(
            //         border: Border.all(width: 4, color: Colors.black12),
            //          color: Colors.orange,
            //          borderRadius: BorderRadius.circular(50)
            //       ),
            //     ),
            //      Container(
            //       height: 50,
            //       width: 90,
            //       margin: EdgeInsets.all(5),
            //       child: Text('Row2'),
            //       alignment: Alignment.center,
            //       decoration: BoxDecoration(
            //           border: Border.all(width: 4, color: Colors.black12),
            //           color: Colors.blueGrey,
            //           borderRadius: BorderRadius.circular(50)),
            //     ),
            //      Container(
            //       height: 50,
            //       width: 90,
            //       margin: EdgeInsets.all(5),
            //       child: Text('Row 3'),
            //       alignment: Alignment.center,
            //       decoration: BoxDecoration(
            //           border: Border.all(width: 4, color: Colors.black12),
            //           color: Color.fromARGB(255, 255, 0, 0),
            //           borderRadius: BorderRadius.circular(50)),
            //     ),
            //      Container(
            //       height: 50,
            //       width: 90,
            //       margin: EdgeInsets.all(5),
            //       child: Text('Row 4'),
            //       alignment: Alignment.center,
            //       decoration: BoxDecoration(
            //           border: Border.all(width: 4, color: Colors.black12),
            //           color: Color.fromARGB(255, 85, 0, 255),
            //           borderRadius: BorderRadius.circular(50)),
            //     ),
            //   ],
            // )
            //Container widget and its property
            //  Container(
            //   //color: Colors.blueGrey,
            //   height: 100,
            //   width: 100,
            //   margin: EdgeInsets.all(100),
            //   alignment: Alignment.center,
            //   child: Text("Container"),

            //   decoration: BoxDecoration(
            //       border: Border.all(width: 4, color: Colors.black),
            //       color: Colors.blueGrey,
            //       borderRadius: BorderRadius.circular(50),
            //       boxShadow: [
            //         BoxShadow(color: Colors.orange, offset: Offset(6.0, 6.0))
            //       ]),
            //   transform: Matrix4.rotationZ(0.1),
            //   constraints: BoxConstraints.expand(height: 10.0),
            // ),
            ));
  }
}
