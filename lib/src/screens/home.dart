import 'package:flutter/material.dart';
import 'package:food_app_2/src/commons.dart';
import 'package:food_app_2/src/models/popular.dart';
import 'package:food_app_2/src/screens/add_to_cart.dart';
// import 'package:food_app_2/src/widgets/bottom_screen.dart';
// import 'package:food_app_2/src/screens/cart.dart';
import 'package:food_app_2/src/widgets/categories.dart';
import 'package:food_app_2/src/widgets/populars.dart';
// import 'package:food_app_2/src/widgets/featured_products.dart';
// import 'package:food_app_2/src/widgets/small_floating_button.dart';
import 'package:food_app_2/src/widgets/title.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:toast/toast.dart';

// class FakeRepository {
//   Future<List<Popular>> mockRequest() async =>
//       await Future.delayed(const Duration(seconds: 5), () => popularList);
// }

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }

  GlobalKey globalKey = GlobalKey();
  AlertDialog dialog = AlertDialog(
    content: Text(
      "You have no notiications..",
      style: TextStyle(fontSize: 18.0),
    ),
    title: Text("Hello!"),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      backgroundColor: white,
      body: Container(
        padding: EdgeInsets.only(left: 14),
        child: SafeArea(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(
                      text: "Lagos, CO 80205, NIGERIA",
                      size: 16,
                      color: grey,
                    ),
                  ),
                  Stack(
                      children: [
                        IconButton(
                            icon: Icon(Icons.notifications_none),
                            onPressed: () => showDialog(
                                context: context,
                                builder: (builder) {
                                  return dialog;
                                })),
                        Positioned(
                          top: 12,
                          right: 12,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: yellow,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        )
                      ],
                    )
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                  padding: EdgeInsets.only(left: 12.0),
                  child: CustomText(
                    text: "Fast & Delicious \nFood",
                    size: 36,
                    color: black,
                    weight: FontWeight.bold,
                  )),
              Categories(),
              // Featuyellow(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  text: "Popular",
                  size: 26,
                  weight: FontWeight.bold,
                  color: black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => AddToCart()));
                },
                child: Populars()
                ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  text: "Da Cimino",
                  size: 20,
                  weight: FontWeight.bold,
                  color: black,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    CustomText(
                      text: "N5,000",
                      weight: FontWeight.bold,
                      size: 14,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.timer),
                        CustomText(
                          text: "45-120Min",
                          color: black,
                          weight: FontWeight.bold,
                          size: 14,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.star),
                        CustomText(
                          text: "4.5",
                          color: black,
                          weight: FontWeight.bold,
                          size: 14,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  text: "All restaurants",
                  size: 26,
                  weight: FontWeight.bold,
                  color: black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(right: 20),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("images/beyond-meat-mcdonalds.png")),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            
          },
          child: Icon(Icons.account_box_sharp),
          backgroundColor: Colors.black),
    );
    // bottomNavigationBar: BottomScreen());
  }
}
