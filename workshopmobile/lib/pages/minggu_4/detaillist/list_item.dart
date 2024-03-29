import 'package:flutter/material.dart';
import 'package:workshopmobile/model/makananIndonesia.dart';

class ListItem extends StatelessWidget{
  final makananIndonesia place;
  final bool isDone;
  final Function(bool?value) onCheckboxClick;

  const ListItem({
    required this.place,
    required this.isDone,
    required this.onCheckboxClick,
  });

  @override
  Widget build(BuildContext context){
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
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
          Checkbox(
            checkColor: Colors.blueAccent,
            value: isDone,
            onChanged: onCheckboxClick,
          ),
        ],
      ),
    );
  }
}