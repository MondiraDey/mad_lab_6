import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(items: [
          BottomAppBar(
            icon: Icon(AntDesign.profile_fill),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_2user_bold),
            label: "profile",
          ),
        ]),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 70,
                child: DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.tiktok),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                hoverColor: const Color.fromARGB(255, 33, 100, 243),
                focusColor: const Color.fromARGB(255, 255, 197, 82),
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Text("Trail"),
                onTap: () {},
              ),
              ListTile(
                hoverColor: const Color.fromARGB(255, 33, 205, 243),
                focusColor: const Color.fromARGB(255, 255, 197, 82),
                leading: Icon(Icons.home),
                title: Text("Issue"),
                trailing: Text("Trail"),
                onTap: () {},
              ),
            ],
          ),
        ),
        endDrawer: Drawer(),
        appBar: AppBar(
          title: Text("Advance UI - LAB 06"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://static.vecteezy.com/system/resources/thumbnails/023/030/611/small_2x/artificial-intelligence-ai-business-people-showing-future-technology-photo.jpg",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            CachedNetworkImage(
              imageUrl: "https://images4.alphacoders.com/135/1355023.jpeg",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Image(
                image: NetworkImage(
                    'https://img.freepik.com/premium-photo/abstract-surreal-sand-dune-landscape-backgrounds-nature-art-concept-digital-art-illustration-generative-ai_10307-3112.jpg')),
          ],
        ),
      ),
    );
  }
}
