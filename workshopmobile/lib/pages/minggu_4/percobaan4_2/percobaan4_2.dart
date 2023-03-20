import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshopmobile/provider/done_tourism_provider.dart';
import 'MainScreenP2.dart';

class percobaan4_2 extends StatelessWidget{
  const percobaan4_2 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'contacts',
        theme: ThemeData(),
        home: MainScreenP2(),
      ),
    );
  }
}