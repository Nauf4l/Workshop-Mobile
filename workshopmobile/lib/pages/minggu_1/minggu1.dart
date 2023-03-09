import 'package:flutter/material.dart';

class minggu1 extends StatefulWidget{
  const minggu1({Key? key}) : super(key: key);

  @override
  State<minggu1> createState()=> _minggu1State();
}

class _minggu1State extends State<minggu1>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Minggu 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Muhammad Naufal Ikrom"),
            const Text("3121600019 / 2 D4 IT A"),
          ],
        ),
      ),
    );
  }
}