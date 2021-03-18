// import 'package:emojis/emoji.dart';
// import 'package:emojis/emojis.dart';
// import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';
import 'package:food_app_2/src/commons.dart';
import 'package:food_app_2/src/screens/home.dart';
// import 'package:food_app_2/src/screens/cart.dart';
// import 'package:food_app_2/src/screens/home.dart';
// import 'package:food_app_2/src/widgets/bottom_screen.dart';
// import 'package:food_app_2/src/widgets/categories.dart';
// import 'package:food_app_2/src/widgets/featuyellow_products.dart';
// import 'package:food_app_2/src/widgets/small_floating_button.dart';
import 'package:food_app_2/src/widgets/title.dart';
import 'package:toast/toast.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool boxState = true;
  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SafeArea(
          child: ListView(children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Home()));
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: CustomText(
                  text: "Address",
                  size: 24,
                  weight: FontWeight.bold,
                )),
            SizedBox(
              height: 24,
            ),
            // Container(
            //     alignment: Alignment.center,
            //     child: CustomText(
            //       text: Emojis.house,
            //       size: 100,
            //     )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text:
                      "72, Aiyegbaju Street Behind \nMethodist Primary School",
                  size: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: yellow,
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.add_location)),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CustomText(
              text: "Payment method",
              size: 24,
              color: Colors.black,
              weight: FontWeight.bold,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (_, index) {
                    return Row(
                      children: [
                        Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                            border: Border.all(color: grey),
                          ),
                          child: Container(
                              height: 120,
                              width: 200,
                              margin: EdgeInsets.only(bottom: 28),
                              alignment: Alignment.bottomCenter,
                              child: CustomText(
                                text: "Add new",
                                color: grey,
                                size: 20,
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              boxState = !boxState;
                            });
                          },
                          child: Stack(children: [
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              height: 120,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: yellow,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.payment,
                                      color: yellow,
                                    ),
                                    CustomText(
                                      text: "**** **** **** 6839",
                                      weight: FontWeight.bold,
                                      size: 20,
                                      color: black,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            !boxState
                                ? Positioned(
                                    top: 0.5,
                                    right: 0.5,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: yellow,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        size: 18,
                                      ),
                                    ),
                                  )
                                : SizedBox.shrink()
                          ]),
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(height: 40),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "items",
                        color: grey,
                      ),
                      CustomText(
                        text: "N2,000",
                        color: black,
                        weight: FontWeight.bold,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Discount",
                        color: grey,
                      ),
                      CustomText(
                        text: "0%",
                        color: black,
                        weight: FontWeight.bold,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Total",
                    size: 24,
                  ),
                  CustomText(
                    text: "N2,000",
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Home()));
                showToast("You have checked out succesfully",
                    gravity: Toast.BOTTOM, duration: 3 );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: yellow,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Checkout",
                        size: 18,
                        color: black,
                        weight: FontWeight.bold,
                      ),
                      CustomText(
                        text: "N2,000",
                        color: black,
                        weight: FontWeight.bold,
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
