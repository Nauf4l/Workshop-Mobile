import 'package:flutter/material.dart';
import 'package:workshopmobile/pages/minggu_4/percobaan4_1/percobaan4_1.dart';
import 'package:workshopmobile/pages/minggu_4/percobaan4_2/percobaan4_2.dart';
import 'package:workshopmobile/pages/minggu_4/tugas4/tugas4.dart';


class minggu4 extends StatefulWidget{
  const minggu4({Key? key}) : super(key: key);

  @override
  State<minggu4> createState()=> _minggu4State();
}

class _minggu4State extends State<minggu4>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Minggu 4"),
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
                    "Percobaan 1",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const percobaan4_1(),
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
                        builder: (context) => const percobaan4_2(),
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
                        builder: (context) => const tugas4(),
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