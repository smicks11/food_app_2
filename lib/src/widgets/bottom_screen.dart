import 'package:flutter/material.dart';
import 'package:food_app_2/src/commons.dart';
import 'package:food_app_2/src/screens/cart.dart';
import 'package:food_app_2/src/screens/home.dart';
import 'package:food_app_2/src/widgets/title.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class BottomScreen extends StatefulWidget {
  @override
  _BottomScreenState createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      color: white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Home()));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.home,
                    color: grey,
                  ),
                  // SvgPicture.asset(
                  //   "images/home.svg",
                  //   width: 20,
                  //   height: 20,
                  // ),
                  SizedBox(
                    height: 2,
                  ),
                  CustomText(text: "Home"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Home()));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.support,
                    color: grey,
                  ),
                  // SvgPicture.asset(
                  //   "images/notification.svg",
                  //   width: 20,
                  //   height: 20,
                  // ),
                  SizedBox(
                    height: 2,
                  ),
                  CustomText(text: "Near By")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Cart()));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.bubble_chart,
                    color: grey,
                  ),
                  // SvgPicture.asset(
                  //   "images/person.svg",
                  //   width: 20,
                  //   height: 20,
                  // ),
                  SizedBox(
                    height: 2,
                  ),
                  CustomText(text: "Cart")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Home()));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.menu,
                    color: grey,
                  ),
                  // SvgPicture.asset(
                  //   "images/menu.svg",
                  //   width: 20,
                  //   height: 20,
                  // ),
                  SizedBox(
                    height: 2,
                  ),
                  CustomText(text: "Account")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
