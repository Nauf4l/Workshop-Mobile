import 'package:flutter/material.dart';
import 'package:workshopmobile/model/makananIndonesia.dart';

class detailScreenRC extends StatelessWidget{
  const detailScreenRC({Key? key, required this.place}) : super(key: key);

  final makananIndonesia place;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              place.imageAsset,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 30,
                ),
              ),
            ),//container judul
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      Text(place.date),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time),
                      Text(place.time),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.attach_money),
                      Text(place.cash),
                    ],
                  ),
                ],
              ),
            ),//container icon
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                place.describsi,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),//container describsi
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageassetList.map((e) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(e),
                      ),
                    ),
                  );
                }).toList(),
                // [
                //   Padding(
                //     padding: const EdgeInsets.all(4.0),
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.circular(20), 
                //       child: Image.asset('assets/images/rujakcingur/rujakcingur0.jpg'),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.all(4.0),
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.circular(20), 
                //       child: Image.asset('assets/images/rujakcingur/rujakcingur2.jpg'),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.all(4.0),
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.circular(20),
                //       child: Image.asset('assets/images/rujakcingur/rujakcingur3.jpg'),
                //     ),
                //   ),Padding(
                //     padding: const EdgeInsets.all(4.0),
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.circular(20),
                //       child: Image.asset('assets/images/rujakcingur/rujakcingur4.jpg'),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.all(4.0),
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.circular(20),
                //       child: Image.asset('assets/images/rujakcingur/rujakcingur5.jpg'),
                //     ),
                //   ),

                // ],
              ),
            ),//gambar sidebar
          ],
        ),
      ),
    );
  }
}
