import 'package:flutter/material.dart';
import 'package:workshopmobile/pages/minggu_3/pages/minggu3(2)/percobaan/percobaan3_2.dart';
import 'package:workshopmobile/pages/minggu_3/pages/minggu3(2)/latihan/latihan3_2.dart';


class minggu3_2 extends StatefulWidget{
  const minggu3_2({Key? key}) : super(key: key);

  @override
  State<minggu3_2> createState()=> _minggu3_1State();
}

class _minggu3_1State extends State<minggu3_2>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Minggu 3 part 2"),
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
                        builder: (context) => const percobaan3_2(),
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
                    "Latihan dan Tugas",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const latihan3_2(),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}