import 'package:flutter/material.dart';
import 'package:workshopmobile/pages/minggu_4/percobaan4_2/tourism_list.dart';
import 'package:workshopmobile/pages/minggu_4/percobaan4_2/done_makanan_list.dart';

class MainScreenP2 extends StatefulWidget{
  MainScreenP2 ({Key? key}) : super(key: key);

  @override
  _MainScreenP2State createState() => _MainScreenP2State();
}

class _MainScreenP2State extends State<MainScreenP2>{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Makanan Khas Indonesia'),
        actions: [
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DoneMakananIndonesiaList();
                },),
              );
            },
          ),
        ],
      ),
      body: tourismList(),
    );
  }
}