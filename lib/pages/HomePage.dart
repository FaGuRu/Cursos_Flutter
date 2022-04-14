import 'package:flutter/material.dart';
import 'package:hello_word/pages/SecondPage.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Uso básico del Navigator'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.green[600],
          textColor: Colors.black,
          child: Text("Segunda pantalla"),
            onPressed: (){
            _secondPage(context);
            }),
      ),
    );
  }

  void _secondPage(BuildContext context) {
    Navigator.of(context).pushNamed("/second",arguments: SecondPageArguments(name: "Fabricio", lastName: "Gumeta"));
  }
}