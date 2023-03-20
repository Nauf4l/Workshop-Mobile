import 'package:flutter/material.dart';
import 'package:workshopmobile/pages/minggu_4/percobaan4_1/done_makanan_list.dart';
import 'package:workshopmobile/model/makananIndonesia.dart';
import 'package:workshopmobile/pages/minggu_3/pages/minggu3(2)/latihan/latihan3_2.dart';
import 'package:workshopmobile/pages/minggu_4/detaillist/detailScreenRC.dart';
import 'package:workshopmobile/pages/minggu_4/detaillist/list_item.dart';
import 'package:workshopmobile/pages/minggu_4/percobaan4_1/tourism_list.dart';

class percobaan4_1 extends StatefulWidget {
  const percobaan4_1({Key? key}) : super(key: key);


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<percobaan4_1>{

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
