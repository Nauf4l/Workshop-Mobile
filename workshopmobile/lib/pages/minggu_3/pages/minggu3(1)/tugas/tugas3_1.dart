import 'package:flutter/material.dart';

class tugas3_1 extends StatelessWidget{
  const tugas3_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'contacts',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/rujakcingur/rujakcingur1.png',
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(
                'Makanan Rujak Cingur',
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
                      Text('Open everyday'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time),
                      Text('08,00 - 17.00'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.attach_money),
                      Text('15.000'),
                    ],
                  ),
                ],
              ),
            ),//container icon
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Makanan ini merupakan makanan khas Surabaya. Makanan ini menjadi salah satu menu khas Jawa Timur yang sudah terkenal seantero negeri. Rujak cingur terdiri dari potongan cingur atau hidung sapi yang sudah melalui proses perebusan lama sehingga empuk dan kenyal.',
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
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), 
                      child: Image.asset('assets/images/rujakcingur/rujakcingur0.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), 
                      child: Image.asset('assets/images/rujakcingur/rujakcingur2.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/rujakcingur/rujakcingur3.jpg'),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/rujakcingur/rujakcingur4.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/rujakcingur/rujakcingur5.jpg'),
                    ),
                  ),

                ],
              ),
            ),//gambar sidebar
          ],
        ),
      ),
    );
  }
}
