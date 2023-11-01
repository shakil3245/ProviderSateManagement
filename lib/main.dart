import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/provider/exampleProdvier.dart';
import 'package:providerpractice/provider/favProvider.dart';

import 'UI/colorChangeWithSlider.dart';
import 'UI/favouriteScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //declearing all provider class name here
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>ExampleOnePeovider()),
      ChangeNotifierProvider(create: (_)=>FavProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FavouriteScreen(),
    ),);
  }
}
