import 'package:flutter/material.dart';
import 'package:workshopmobile/model/makananIndonesia.dart';

class DoneMakananIndonesiaList extends StatelessWidget{
  final List<makananIndonesia> doneMakananIndonesiaList;
  const DoneMakananIndonesiaList({Key?key, required this.doneMakananIndonesiaList}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Makanan yang pernah dicoba"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final makananIndonesia place = doneMakananIndonesiaList[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  place.name,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const Icon(Icons.done_outline),
              ],
            ),
          );
        },
        itemCount: doneMakananIndonesiaList.length,
      ),
    );
  }
}