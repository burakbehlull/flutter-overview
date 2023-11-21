import 'package:flutter/material.dart';

class MyCounterApp extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<MyCounterApp> {
  final TextEditingController _counterController = TextEditingController();
  String _text = '';
  int counter = 0; 
  int counterStore = 0; 

  void arttir() {
    setState(() {
      counter++;
    });
  }

  void azalt() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Counter Uygulaması'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$counter', style: TextStyle(fontSize: 20)),
            ElevatedButton(
              onPressed: arttir,
              child: Icon(Icons.add),
            ),
            ElevatedButton(onPressed: azalt, child: Icon(Icons.remove)),
        
          TextField(onChanged: (value){
            setState(() {
              counterStore = int.parse(value);
            });
          },controller: _counterController),

          ElevatedButton(onPressed: (){
            setState(() {
              counter += counterStore; 
            });
          }, child: Text('Ekle')),
          ElevatedButton(onPressed: (){
            setState(() {
              counter -=counterStore;
            });
          }, child: Text('Sil'))
          
          ],
        ),
      ),
    );
  }
}
