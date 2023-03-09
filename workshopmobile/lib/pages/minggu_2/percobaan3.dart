import 'package:flutter/material.dart';

class percobaan3 extends StatefulWidget {
  const percobaan3({Key? key}) : super(key: key);

  @override
  State<percobaan3> createState() => _PercobaanTigaState();
}

class _PercobaanTigaState extends State<percobaan3> {
  int _counter = 1;
  String _text = 'Ganjil';
  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter > 10) {
        _counter = 0;
      }

      _text = "Ganjil : ";
      for(int i=0; i<=_counter; i++) {
        if(i%2 != 0) {
          _text += '${i}, ';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Percobaan 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headline4,
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