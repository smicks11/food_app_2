import 'package:flutter/material.dart';
import 'package:food_app_2/src/models/popular.dart';

List<Popular> popularList = [
  Popular(image: "images/beyond-meat-mcdonalds.png"),
  Popular(image: "images/beyond-meat-mcdonalds.png"),
  Popular(image: "images/beyond-meat-mcdonalds.png")
];

class Populars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 160,
      padding: EdgeInsets.all(2.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: popularList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(popularList[index].image)),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
