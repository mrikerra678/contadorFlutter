import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState(){

    return _ContadorPageState();
  }

}

class _ContadorPageState extends State<ContadorPage>  {

  final TextStyle _textoStilo = new TextStyle(fontSize: 25);
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
            Text("Numero de clips: ",style: _textoStilo,),
            Text('$_conteo',style: _textoStilo),
          ],
        ),

      
    ),
    
    //Cambio de boton Localizacion en pantalla
    //floatingActionButtonLocation: FloatingActionButtonLocation.endTop,

    floatingActionButton: _CrearBotones()
    );  
    
  }

    Widget _CrearBotones(){

      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
            SizedBox(width: 30),
            FloatingActionButton(child: Icon(Icons.add),onPressed: _agregar),
            Expanded(child: SizedBox()),
            FloatingActionButton(child: Icon(Icons.remove_circle),onPressed: _sustraer),
            SizedBox(),
            FloatingActionButton(child: Icon(Icons.restore),onPressed: _reset),
        ]

        
      ); 
      
    }

    void _agregar(){
     
      setState(()=>_conteo++);
    }

    void _sustraer(){
      setState(()=>_conteo--);

    }

    void _reset(){

      setState(()=>_conteo = 0);
    }

  
    



    }
