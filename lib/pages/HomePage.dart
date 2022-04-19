import 'package:flutter/material.dart';
import 'package:hello_word/pages/SecondPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late String nameValue;
  late String lastnameValue;
  //Para utilizar el formulario necesitamos una GlobalKEY
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario sin Widget form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children:[
              //Campos de texto
              TextFormField(
                decoration: InputDecoration(labelText: "Nombre"),
                onSaved: (value){
                  nameValue = value!;
                },
                validator: (value){
                  if(value!.isEmpty){
                    return"Lllene el campo";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Apellido"),
                onSaved: (value){
                  lastnameValue = value!;
                },
                validator: (value){
                  if(value!.isEmpty){
                    return"Lllene el campo";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Número de teléfono"),
                keyboardType: TextInputType.phone,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "email"),
                keyboardType: TextInputType.emailAddress,
              ),

              //Botón
              RaisedButton(
                  color: Colors.grey,
                  textColor: Colors.black,
                  child: Text("Segunda pantalla"),
                  onPressed: (){
                    _secondPage(context);
                  }),
            ],
          ),
        )
      ),
    );
  }

  void _secondPage(BuildContext context) {
    if(formKey.currentState!.validate()){
      print("Hola");
      formKey.currentState!.save();
      Navigator.of(context).pushNamed("/second",
          arguments: SecondPageArguments(name: nameValue, lastName: lastnameValue));
    }
  }

}