import 'package:flutter/material.dart';
import 'package:hello_word/pages/SecondPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Utilizamos controladores para los input
  late TextEditingController nameTextController;
  late TextEditingController lastnameTextController;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario sin Widget form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children:[
            //Campos de texto
             TextField(
              decoration: InputDecoration(labelText: "Nombre"),
              controller: nameTextController,
            ),
             TextField(
              decoration: InputDecoration(labelText: "Apellido"),
              controller: lastnameTextController,
            ),

            //Botón
            RaisedButton(
                color: Colors.green[600],
                textColor: Colors.black,
                child: Text("Segunda pantalla"),
                onPressed: (){
                  _secondPage(context);
                }),
          ],
        ),
      ),
    );
  }

  void _secondPage(BuildContext context) {
    Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(name: nameTextController.text, lastName: lastnameTextController.text));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Utilizamos controladores para los input
    nameTextController = TextEditingController();
    lastnameTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //Destruimos los controladores despues de usarlos
    nameTextController.dispose();
    lastnameTextController.dispose();
  }
}