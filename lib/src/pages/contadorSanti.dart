import 'package:flutter/material.dart';
import 'package:contador/model/contador.dart';
import 'package:contador/src/widget/contador.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // State
  var _list = <Contador>[];

  void _newContador() {
    setState(() {
      _list.add(Contador('nombreFuturo() #${_list.length + 1}'));
    });
  }

  Future<String> nombreFuturo() {
  return Future.delayed(Duration(seconds: 4), () => 'Large Latte');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (_, i){
          return crearContador(item: _list[i]);
        }
       
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: _newContador,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
