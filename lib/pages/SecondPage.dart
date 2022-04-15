import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(persona.name),
            Divider(),
            Text(persona.lastName),
          ]
        ),
      ),
    );
  }
}

class SecondPageArguments {
  String name;
  String lastName;
  SecondPageArguments({required this.name, required this.lastName});
}
