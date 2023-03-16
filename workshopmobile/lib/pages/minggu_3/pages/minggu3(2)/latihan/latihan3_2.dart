import 'package:flutter/material.dart';
import 'package:workshopmobile/model/makananIndonesia.dart';
import 'package:workshopmobile/pages/minggu_3/pages/minggu3(2)/detaillist/detailScreenRC.dart';

class latihan3_2 extends StatelessWidget {
  const latihan3_2({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Makanan Khas Indonesia"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final makananIndonesia place = makananIndoensialist[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return detailScreenRC(place: place);
              }));
            },
            child: listItem(place),
          );
        },
        itemCount: makananIndoensialist.length,
      ),
    );
  }

  Widget listItem(makananIndonesia place) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(place.imageAsset),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    place.name,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(place.location),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
