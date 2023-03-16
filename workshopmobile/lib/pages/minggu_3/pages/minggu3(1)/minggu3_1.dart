import 'package:flutter/material.dart';
import 'package:workshopmobile/pages/minggu_3/pages/minggu3(1)/percobaan/percobaan3_1.dart';
import 'package:workshopmobile/pages/minggu_3/pages/minggu3(1)/latihan/latihan3_1.dart';
import 'package:workshopmobile/pages/minggu_3/pages/minggu3(1)/tugas/tugas3_1.dart';


class minggu3_1 extends StatefulWidget{
  const minggu3_1({Key? key}) : super(key: key);

  @override
  State<minggu3_1> createState()=> _minggu3_1State();
}

class _minggu3_1State extends State<minggu3_1>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Minggu 3 part 1"),
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
                    " Percobaan",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const percobaan3_1(),
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
                        builder: (context) => const latihan3_1(),
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
                        builder: (context) => const tugas3_1(),
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