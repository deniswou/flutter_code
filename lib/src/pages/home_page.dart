import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final styleText = new TextStyle(fontSize: 20);
  final conteo = 0;

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Esto es un contador'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('Número de clicks:', style: styleText),
          Text('$conteo', style: styleText,),
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add),
        backgroundColor: Colors.blue,
        onPressed: (){
          print('mbaeteko');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}