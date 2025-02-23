import 'package:cached_network_image/cached_network_image.dart';
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
            CachedNetworkImage(
              imageUrl: "https://static.vecteezy.com/system/resources/thumbnails/023/030/611/small_2x/artificial-intelligence-ai-business-people-showing-future-technology-photo.jpg",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Image(
                image: NetworkImage(
                    'https://img.freepik.com/premium-photo/abstract-surreal-sand-dune-landscape-backgrounds-nature-art-concept-digital-art-illustration-generative-ai_10307-3112.jpg')
                    ),
          ],
        ),
      ),
    );
  }
}
