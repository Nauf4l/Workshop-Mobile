import 'package:flutter/material.dart';
import 'package:workshopmobile/pages/minggu_4/tugas4/done_makanan_list.dart';
import 'package:workshopmobile/model/makananIndonesia.dart';
import 'package:workshopmobile/pages/minggu_4/detaillist/detailScreenRC.dart';
import 'package:workshopmobile/pages/minggu_4/detaillist/list_item.dart';
import 'package:workshopmobile/pages/minggu_4/tugas4/tourism_list.dart';

class tugas4 extends StatefulWidget {
  const tugas4({Key? key}) : super(key: key);


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<tugas4>{

  final List<makananIndonesia> doneMakananIndonesiaList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Makanan Khas Indonesia"),
        actions: [
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DoneMakananIndonesiaList(doneMakananIndonesiaList: doneMakananIndonesiaList);
                })
              );
            },
          ),
        ],
      ),
      body: tourismList(doneMakananIndonesiaList: doneMakananIndonesiaList),
      
    );
  }

}
