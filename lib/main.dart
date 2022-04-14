import 'package:flutter/material.dart';
import 'package:hello_word/pages/HomePage.dart';
import 'package:hello_word/pages/SecondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //Uso de rutas
      initialRoute: "/",
      routes: {
        "/":(BuildContext context) => MyHomePage(),
        "/second":(BuildContext context) => SecondPage(),
      },
    );
  }
}




