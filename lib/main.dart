import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MyHomePage()
    );
  }
}
class MyHomePage extends StatefulWidget {
  //MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector'),
      ),
      body: Center(
          child: Column(
            children: [
              ListItem(titulo: "Vídeos", icono: Icons.folder),
              ListItem(titulo: "Fotos", icono: Icons.folder),
              ListItem(titulo: "Android", icono: Icons.folder),
              ListItem(titulo: "DCMI", icono: Icons.folder),
              ListItem(titulo: "XD", icono: Icons.folder),
            ],
          )
      ),

    );
  }



}

class ListItem extends StatelessWidget {
  ListItem({
    required this.titulo,
    required this.icono,
  });
  final String titulo;
  final IconData icono;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: _onTap,
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Row(
          children: [
            Icon(icono),
            SizedBox(
              width: 20,
            ),
            Text(titulo)
          ],
        ),
      ),
    );
  }

  void _onTap() {
    print("Se presiono");
  }
}
