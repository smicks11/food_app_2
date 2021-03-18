import 'package:flutter/material.dart';
import 'package:food_app_2/src/commons.dart';
import 'package:food_app_2/src/screens/cart.dart';
import 'package:food_app_2/src/widgets/carousel_slider.dart';
import 'package:food_app_2/src/widgets/title.dart';
// import 'package:food_app_2/src/widgets/carousel_slider.dart';
// import 'package:carousel_slider/carousel_controller.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class AddToCart extends StatefulWidget {
  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        child: Stack(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * 1.0,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    //width: MediaQuery.of(context).size.width*1.0,
                    child: ComplicatedImageDemo(),
                    //Image.asset("images/burger.jpeg",height: 200,width: 200, ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  color: white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: SingleChildScrollView(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Burger",
                                  size: 24,
                                  color: black,
                                  weight: FontWeight.bold,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: yellow),
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        color: black,
                                      ),
                                      onPressed: () {}),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            CustomText(
                              text:
                                  "Freshly baked, made with a mix and cultured burberries baked inside",
                              color: black,
                            ),
                            SizedBox(height: 12),

                            // CustomText(text: "N2000 - 290 Cal"),
                            SizedBox(height: 24),
                            Divider(),
                            SizedBox(height: 12),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: "Calories",
                                      color: black,
                                      weight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: "290 Cal",
                                      color: black,
                                      weight: FontWeight.bold,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: "Calories",
                                      color: grey,
                                      weight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: "290 Cal",
                                      color: grey,
                                      weight: FontWeight.bold,
                                    )
                                  ],
                                ),
                                Divider(),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: "Calories",
                                      color: black,
                                      weight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: "290 Cal",
                                      color: black,
                                      weight: FontWeight.bold,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: "Calories",
                                      color: grey,
                                      weight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: "290 Cal",
                                      color: grey,
                                      weight: FontWeight.bold,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: "Fat",
                                      color: grey,
                                      weight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: "1 g",
                                      color: grey,
                                      weight: FontWeight.bold,
                                    )
                                  ],
                                ),
                                Divider(),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: "Saturated Fat",
                                      weight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: "290 Cal",
                                      weight: FontWeight.bold,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: "Trans Fatty Acid",
                                      color: grey,
                                      weight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: "290 Cal",
                                      color: grey,
                                      weight: FontWeight.bold,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Cart()));
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                      color: yellow,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: CustomText(
                                            text: "Buy Now",
                                            weight: FontWeight.bold,
                                            color: black,
                                            size: 20,
                                          )),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => AddToCart()));
          },
          child: Icon(Icons.account_box_sharp),
          backgroundColor: Colors.black),
    );
  }
}
