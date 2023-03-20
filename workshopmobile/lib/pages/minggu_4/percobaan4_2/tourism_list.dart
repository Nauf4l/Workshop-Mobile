import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshopmobile/model/makananIndonesia.dart';
import 'package:workshopmobile/pages/minggu_4/detaillist/detailScreenRC.dart';
import 'package:workshopmobile/pages/minggu_4/detaillist/list_item.dart';
import 'package:workshopmobile/provider/done_tourism_provider.dart';

class tourismList extends StatefulWidget{

  const tourismList ({Key? key}) : super (key: key);

  @override
  _tourismListState createState() => _tourismListState();
}

class _tourismListState extends State<tourismList>{
  final List<makananIndonesia> makananIndoensialist = [
    makananIndonesia(
    name: 'Rujak Cingur',
    location: 'Surabaya',
    imageAsset: 'assets/images/rujakcingur/rujakcingur1.png',
    describsi: 'Makanan ini merupakan makanan khas Surabaya. Makanan ini menjadi salah satu menu khas Jawa Timur yang sudah terkenal seantero negeri. Rujak cingur terdiri dari potongan cingur atau hidung sapi yang sudah melalui proses perebusan lama sehingga empuk dan kenyal.',
    date: 'Open everyday',
    time: '08.00 - 17.00',
    cash: '15.000',
    imageassetList: [
      'assets/images/rujakcingur/rujakcingur0.jpg',
      'assets/images/rujakcingur/rujakcingur2.jpg',
      'assets/images/rujakcingur/rujakcingur3.jpg',
      'assets/images/rujakcingur/rujakcingur4.jpg',
      'assets/images/rujakcingur/rujakcingur5.jpg',
    ]),

    makananIndonesia(
    name: 'Kerak Telor',
    location: 'Betawi',
    imageAsset: 'assets/images/keraktelor/keraktelor1.jpg',
    describsi: 'Kerak telor adalah makanan khas Betawi yang terbuat dari campuran beras ketan, telur bebek, dan kelapa parut sangrai.',
    date: 'Open everyday',
    time: '08.00 - 17.00',
    cash: '15.000',
    imageassetList: [
      'assets/images/keraktelor/keraktelor0.jpg',
      'assets/images/keraktelor/keraktelor2.jpg',
      'assets/images/keraktelor/keraktelor3.jpg',
      'assets/images/keraktelor/keraktelor4.jpg',
      'assets/images/keraktelor/keraktelor5.jpg',
    ]),

    makananIndonesia(
    name: 'Gudeg',
    location: 'Jogjakarta',
    imageAsset: 'assets/images/gudeg/gudeg0.jpg',
    describsi: 'Gudeg adalah salah satu masakan khas indonesia yang terkenal akan kelezatannya. Masakan ini merupakan masakan tradisional dan khas Provinsi Yogyakarta dan Jawa Tengah Indonesia.',
    date: 'Open everyday',
    time: '08.00 - 17.00',
    cash: '10.000',
    imageassetList: [
      'assets/images/gudeg/gudeg1.jpg',
      'assets/images/gudeg/gudeg2.jpg',
      'assets/images/gudeg/gudeg3.jpg',
      'assets/images/gudeg/gudeg4.jpg',
      'assets/images/gudeg/gudeg5.jpg',
    ]),

    makananIndonesia(
    name: 'Nasi Tiwul',
    location: 'Jogjakarta',
    imageAsset: 'assets/images/tiwul/tiwul0.jpg',
    describsi: 'Nasi Tiwul adalah salah satu masakan khas indonesia lebih tepatnya makanan khas Jogjakarta. Makanan ini berasal dari kabupaten Gunungkidul. Olahan pengganti nasi ini terbuat dari singkong dan muncul pada zaman penjajahan Jepang.',
    date: 'Open everyday',
    time: '08.00 - 17.00',
    cash: '10.000',
    imageassetList: [
      'assets/images/tiwul/tiwul5.jpg',
      'assets/images/tiwul/tiwul1.jpg',
      'assets/images/tiwul/tiwul2.jpg',
      'assets/images/tiwul/tiwul3.jpg',
      'assets/images/tiwul/tiwul4.jpg',
    ]),

    makananIndonesia(
    name: 'Lontong Kupang',
    location: 'Surabaya',
    imageAsset: 'assets/images/kupang/lontongkupang3.jpg',
    describsi: 'Lontong Kupang juga salah satu makanan khas Surabaya yang wajib dicoba. Kupang sendiri adalah sejenis kerang kecil-kecil yang direbus kemudian diberi siraman kuah kaldu gurih bersama perasan jeruk nipis dan sambal petis.',
    date: 'Open everyday',
    time: '08.00 - 17.00',
    cash: '15.000',
    imageassetList: [
      'assets/images/kupang/lontongkupang1.jpg',
      'assets/images/kupang/lontongkupang2.jpg',
      'assets/images/kupang/lontongkupang0.jpg',
      'assets/images/kupang/lontongkupang4.jpg',
      'assets/images/kupang/lontongkupang5.jpg',
    ]),

    makananIndonesia(
    name: 'Lontong Balap',
    location: 'Surabaya',
    imageAsset: 'assets/images/balap/lontongbalap3.jpg',
    describsi: 'Lontong Balap sendiri adalah salah satu makanan khas Surabaya yang menghidangkan tahu goreng, lentho atau perkedel kacang hijau, rebusan taoge, kemudian disiram dengan kuah manis dan gurih.',
    date: 'Open everyday',
    time: '08.00 - 17.00',
    cash: '12.000',
    imageassetList: [
      'assets/images/balap/lontongbalap5.jpg',
      'assets/images/balap/lontongbalap1.jpg',
      'assets/images/balap/lontongbalap0.jpg',
      'assets/images/balap/lontongbalap2.jpg',
      'assets/images/balap/lontongbalap4.jpg',
    ]),
  ];

  @override
  Widget build(BuildContext context){
    return ListView.builder(
        itemBuilder: (context, index) {
          final makananIndonesia place = makananIndoensialist[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return detailScreenRC(place: place);
              }));
            },
            child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget) {
                return ListItem(
                    place: place,
                    isDone: data.doneTourismPlaceList.contains(place),
                    onCheckboxClick: (bool? value){
                      setState(() {
                        if(value!=null){
                          value ? data.doneTourismPlaceList.add(place) : data.doneTourismPlaceList.remove(place);
                        }
                      });
                    }
                  );
              }
            ),
          );
        },
        itemCount: makananIndoensialist.length,
      );
  }

}