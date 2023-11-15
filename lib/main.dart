import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCounterApp(),
    );
  }
}

class MyCounterApp extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<MyCounterApp> {
  int counter = 0; 

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
          ],
        ),
      ),
    );
  }
}