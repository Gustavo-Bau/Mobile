import 'package:flutter/material.dart';
import 'package:spoty/pages/home.dart';
import 'package:spoty/pages/artistas.dart';
import 'package:spoty/pages/podcasts.dart';
import 'package:spoty/pages/search.dart';
import 'package:spoty/pages/album.dart';
import 'package:spoty/pages/player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/podcasts',
      routes:{
        '/home': (context) => Home(),
        '/artistas': (context) => Artistas(),
        '/podcasts': (context) => const Podcasts(),
        '/search': (context) => const SearchPage(),
        '/album': (context) => const AlbumPage(),
        '/player': (context) => const PlayerPage(),
      },
    );
  }
}

