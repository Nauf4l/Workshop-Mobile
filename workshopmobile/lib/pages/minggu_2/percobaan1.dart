import 'package:flutter/material.dart';

class percobaan1 extends StatefulWidget {
  const percobaan1({Key? key}) : super(key: key);

  @override
  State<percobaan1> createState() => _PercobaanSatuState();
}

class _PercobaanSatuState extends State<percobaan1> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter>10) {
        _counter = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Percobaan 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Menambah kondisi if',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}