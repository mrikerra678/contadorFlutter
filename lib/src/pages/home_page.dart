import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  final TextStyle textoStilo = new TextStyle(fontSize: 25);
  final int conteo = 10;

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
            Text("Numero de clips: ",style: textoStilo,),
            Text('$conteo',style: textoStilo),
          ],
        ),

      
    ),
    
    //Cambio de boton Localizacion en pantalla
    //floatingActionButtonLocation: FloatingActionButtonLocation.endTop,

    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.get_app),  
      onPressed: (){
        print("Hola mundo");
        
      },
    ),

    );  
    
  }

}