import 'package:flutter/material.dart';
import 'package:workshopmobile/model/makananIndonesia.dart';

class DoneTourismProvider extends ChangeNotifier{
  final List<makananIndonesia> _doneTourismPlaceList = [];

  List<makananIndonesia> get doneTourismPlaceList => _doneTourismPlaceList;

  void complete(makananIndonesia place, bool isDone){
    isDone ? _doneTourismPlaceList.add(place) : _doneTourismPlaceList.remove(place);
    notifyListeners();
  }
}