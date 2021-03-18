import 'package:flutter/material.dart';
import 'package:food_app_2/src/models/category.dart';
import 'package:food_app_2/src/widgets/title.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import '../commons.dart';
import 'package:emojis/emojis.dart';
// import 'package:emojis/emoji.dart';

List<Category> categoriesList = [
  Category(name: "Meat", emoji: "${Emojis.poultryLeg}"),
  Category(name: "Burger", emoji: "${Emojis.hamburger}"),
  Category(name: "Noodles", emoji: "${Emojis.spaghetti}"),
  Category(name: "Burger Beer", emoji: "${Emojis.wineGlass}"),
  Category(name: "Noodles", emoji: "${Emojis.spaghetti}"),
  Category(name: "Beer", emoji: "${Emojis.beerMug}"),
];

//final foodCategory =  Emoji.byGroup(EmojiGroup.foodDrink);
// List<Emoji> emList = Emoji.all();

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Container(
                    child: Text(categoriesList[index].emoji),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(
                    text: categoriesList[index].name,
                    size: 16,
                    color: black,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
