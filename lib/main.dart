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
        title: Text('Diferentes botonres'),
      ),
      body: Center(
          child: Column(
            children: [
              RaisedButton(
                color: Colors.purpleAccent[700],
                textColor: Colors.black,
                child: Text("RaisedButton"),
                onPressed: _onPressed,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              FlatButton(
                  child: Text("FlatButton"),
                onPressed: _onPressed,
              ),
              IconButton(
                  onPressed: _onPressed,
                  icon: Icon(Icons.add)
              ),
              OutlineButton(
                  child: Text("OutlineButton"),
                  onPressed: _onPressed,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                ),
                borderSide: BorderSide(color: Colors.purpleAccent),
              )
            ],
          )
      ),

    );
  }




  void _onPressed() {
    print("Holaaa");
  }
}
