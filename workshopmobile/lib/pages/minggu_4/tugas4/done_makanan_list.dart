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
                // Text(
                //   place.name,
                //   style: const TextStyle(
                //     fontSize: 16.0,
                //   ),
                // ),
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