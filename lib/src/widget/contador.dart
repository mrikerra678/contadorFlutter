import 'package:contador/model/contador.dart';
import 'package:flutter/material.dart';


class crearContador extends StatefulWidget {
  crearContador({Key key , this.item}) : super(key: key);
  final Contador item;

  @override
  _crearContadorState createState() => _crearContadorState();
}

class _crearContadorState extends State<crearContador> {


  void _incrementCounter(int valor){

    widget.item.valor += valor;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
         Center(
              child: Text("Contador",
                  style: TextStyle(fontStyle: FontStyle.italic)),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                  onPressed: () => _incrementCounter(1),
                  icon: Icon(Icons.add),
                  color: Colors.green),
              Text(
                '${widget.item.valor}',
                style: Theme.of(context).textTheme.headline3,
              ),
              IconButton(
                  onPressed: () => _incrementCounter(-1),
                  icon: Icon(Icons.remove),
                  color: Colors.red),
              Divider(),
            ]),
          ],         
    );
  }
}

