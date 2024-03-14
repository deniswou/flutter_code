import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState()=> _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage>{

  final _styleText = new TextStyle(fontSize: 20);
  int _conteo = 0;

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
          Text('Número de clicks:', style: _styleText),
          Text('$_conteo', style: _styleText,),
        ],
        ),
      ),
      floatingActionButton: _crearBotones());
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset, backgroundColor: Colors.grey,),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer, backgroundColor: Colors.red,),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar, backgroundColor: Colors.blue,),
      ]
    );
  }

  void _agregar(){
    setState(() => _conteo++);
  }

    void _sustraer(){
    setState(() => _conteo--);
  }

    void _reset(){
    setState(() => _conteo = 0);
  }
}