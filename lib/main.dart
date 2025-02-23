import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Advance UI - LAB 06"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
           Image(image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/023/030/611/small_2x/artificial-intelligence-ai-business-people-showing-future-technology-photo.jpg')
           ),
           
          ],
           ),
          ),
        );
  }
}
