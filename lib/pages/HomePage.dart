import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  //GobalKey para acceder al Scaffold
  final _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Uso de Drawer"),
      ),
      body: Center(
        child: Text("Hola Mundo"),
      ),
      drawer: _getDrawer(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.menu),
        onPressed: () => _scaffoldKey.currentState!.openDrawer(),

      ),
    );
  }

  //Metodo para devolver el Drawer
Widget _getDrawer(BuildContext context){
    return Drawer(
      child: ListView(
        children: const [
          //Encabezado del Menú
          UserAccountsDrawerHeader(
              accountName: Text("Zaky"),
              accountEmail: Text("email_ty@gmail.com"),
              currentAccountPicture: FlutterLogo(),
              decoration: BoxDecoration(color: Colors.greenAccent),
          ),
          //Cuerpo del menú
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
          ),
        ],
      ),
    );
}

}
