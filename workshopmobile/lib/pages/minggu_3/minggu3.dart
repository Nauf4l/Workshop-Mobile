import 'package:flutter/material.dart';
import 'package:workshopmobile/pages/minggu_3/pages/minggu3(1)/minggu3_1.dart';
import 'package:workshopmobile/pages/minggu_3/pages/minggu3(2)/minggu3_2.dart';

class minggu3 extends StatefulWidget{
  const minggu3({Key? key}) : super(key: key);

  @override
  State<minggu3> createState()=> _minggu3State();
}

class _minggu3State extends State<minggu3>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Minggu 3"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue,
                ),
                child: ElevatedButton (
                  child: const Text(
                    " Minggu 3_1",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const minggu3_1(),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 20,),

              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue,
                ),
                child: ElevatedButton (
                  child: const Text(
                    "Minggu 3_2",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const minggu3_2(),
                      ),
                    );
                  },
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}