import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshopmobile/model/makananIndonesia.dart';
import 'package:workshopmobile/provider/done_tourism_provider.dart';

class DoneMakananIndonesiaList extends StatelessWidget{
  DoneMakananIndonesiaList({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final List<makananIndonesia> doneTourismPlaceList= 
    Provider.of<DoneTourismProvider>(
      context,
      listen: false,
    ).doneTourismPlaceList;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Makanan yang pernah dicoba"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final makananIndonesia place = doneTourismPlaceList[index];
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
        itemCount: doneTourismPlaceList.length,
      ),
    );
  }
}