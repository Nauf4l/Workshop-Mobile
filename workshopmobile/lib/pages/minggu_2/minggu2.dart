import 'package:flutter/material.dart';
import 'package:workshopmobile/pages/minggu_2/percobaan1.dart';
import 'package:workshopmobile/pages/minggu_2/percobaan2.dart';
import 'package:workshopmobile/pages/minggu_2/percobaan3.dart';
import 'package:workshopmobile/pages/minggu_2/latihan.dart';
import 'package:workshopmobile/pages/minggu_2/tugas.dart';


class minggu2 extends StatefulWidget{
  const minggu2({Key? key}) : super(key: key);

  @override
  State<minggu2> createState()=> _minggu2State();
}

class _minggu2State extends State<minggu2>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Minggu 2"),
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
                    " Percobaan 1",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const percobaan1(),
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
                    "Percobaan 2",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const percobaan2(),
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
                    "Percobaan 3",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const percobaan3(),
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
                    "Latihan",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const latihan(),
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
                    "Tugas",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const tugas(),
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