import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: MyApp(),
)
);


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Veamos bishes..."),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(titulo: new Text("está papa"),
                icon: new Icon(
                  Icons.linked_camera
              ),),
              new MyCard(titulo: new Text("segundo"),
              icon: new Icon(Icons.link),),
              new MyCard(titulo: new Text("Tercero"), icon: new Icon(Icons.linked_camera),)
            ],
          ),
        )
      ),
    );
  }
}

class MyCard extends StatelessWidget{
  final Widget titulo;
  final Widget icon;


  MyCard({this.titulo, this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: const EdgeInsets.only(bottom: 1.0),
        child: new Card(
          child: new Container(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              children: <Widget>[this.titulo,this.icon],
            ),  
          )
          
        ),
    );
  }
}
