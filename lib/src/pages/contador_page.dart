import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _textSize = new TextStyle(fontSize: 25);
  int _conteo = 0;

  // Metodo para incrementar el contador en uno
  void _agregar() {
    setState(() => _conteo++);
  }

  // Metodo para decrementar el contador en uno
  void _sustraer() {
    setState(() => _conteo--);
  }

  // Metodo para recetear el contador en uno
  void _reset() {
    setState(() => _conteo = 0);
  }

  // Metodo para crear botones
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _sustraer),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Titulo'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de tabs', style: _textSize),
              Text('$_conteo', style: _textSize)
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }
}
