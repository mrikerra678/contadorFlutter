import 'package:flutter/material.dart';

class ContadorPage2 extends StatefulWidget {
  @override
  createState() {
    return _ListaContador();
  }
}

class _ListaContador extends State<ContadorPage2> {
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Titulo guapo"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                
            ],
            
          ),
        ),
        
        floatingActionButton: _CrearBotones());
  }

  Widget _CrearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(width: 30),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _AnadirContador),
    ]);
  }

  Widget _AnadirContador() {
    int _conteo = 1;
    
    return Column(
      children: <Widget>[
        Text("Contador"),
        RaisedButton(
          child: Icon(Icons.add),
          onPressed: (() => (setState(() => _conteo++))),
        ),
        Text('$_conteo'),
        RaisedButton(
          child: Icon(Icons.remove),
          onPressed: (() => (setState(() => _conteo--))),
        ),
        
      ],
     
    );
    
  }
}
