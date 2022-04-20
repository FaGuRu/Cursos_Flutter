import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_word/pages/SecondPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late String nameValue;
  late String lastnameValue;
  //FocusNode
  late FocusNode nameFocus;
  late FocusNode lastnameFocus;
  late FocusNode telFocus;
  late FocusNode emailFocus;
  late FocusNode ageFocus;
  late FocusNode webFocus;

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
                focusNode: nameFocus,
                onEditingComplete: (){
                  requestFocus(context, lastnameFocus);
                },
                textInputAction: TextInputAction.next,
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
                focusNode: lastnameFocus,
                onEditingComplete: (){
                  requestFocus(context, telFocus);
                },
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Número de teléfono"),
                keyboardType: TextInputType.phone,
                focusNode: telFocus,
                onEditingComplete: (){
                  requestFocus(context, emailFocus);
                },
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                keyboardType: TextInputType.emailAddress,
                focusNode: emailFocus,
                onEditingComplete: (){
                  requestFocus(context, ageFocus);
                },
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Edad"),
                keyboardType: TextInputType.number,
                focusNode: ageFocus,
                onEditingComplete: (){
                  requestFocus(context, webFocus);
                },
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Web"),
                keyboardType: TextInputType.url,
                focusNode: webFocus,
              ),
              //Botón
              RaisedButton(
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

  void requestFocus(BuildContext context, FocusNode focusNode){
    FocusScope.of(context).requestFocus(focusNode);
  }

  void _secondPage(BuildContext context) {
    if(formKey.currentState!.validate()){
      formKey.currentState!.save();
      Navigator.of(context).pushNamed("/second",
          arguments: SecondPageArguments(name: nameValue, lastName: lastnameValue));
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameFocus.dispose();
    lastnameFocus.dispose();
    telFocus.dispose();
    emailFocus.dispose();
    ageFocus.dispose();
    webFocus.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameFocus = FocusNode();
    lastnameFocus = FocusNode();
    telFocus = FocusNode();
    emailFocus = FocusNode();
    ageFocus = FocusNode();
    webFocus = FocusNode();
  }

}