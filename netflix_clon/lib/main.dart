import 'package:netflix_clon/paginas/inicio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InicioPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
