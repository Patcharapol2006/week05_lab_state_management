import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/fav_model.dart';
import 'home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoritesModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Marketplace',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
