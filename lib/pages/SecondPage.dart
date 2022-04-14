import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final persona = ModalRoute.of(context)!.settings.arguments as SecondPageArguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla #2"),
      ),
      body: Center(
        child: Text(persona.name),
      ),
    );
  }
}

class SecondPageArguments {
  String name;
  String lastName;
  SecondPageArguments({required this.name, required this.lastName});
}
