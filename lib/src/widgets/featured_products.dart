import 'package:flutter/material.dart';
import 'package:food_app_2/src/models/products.dart';
import 'package:food_app_2/src/screens/cart.dart';
import 'package:food_app_2/src/widgets/title.dart';
import '../commons.dart';
// import 'package:flutter_svg/flutter_svg.dart';

List<Product> productList = [
  Product(
      name: "Cereals",
      price: 5.99,
      rating: 4.2,
      vendor: "GoodFoos",
      wishList: true,
      image: "burger.png",
      description:
          "Cereal is important for us our cereal is the best you can ever get in nigeria and globally"),
  Product(
      name: "Burger Beer",
      price: 12.99,
      rating: 4.1,
      vendor: "GoodFoos",
      wishList: false,
      image: "burger.png",
      description:
          "Burger Beer is important for us. Our Burger beer is the best you can ever get in nigeria and globally"),
  Product(
      name: "Meat",
      price: 20.99,
      rating: 4.2,
      vendor: "GoodFoos",
      wishList: true,
      image: "beyond-meat-mcdonalds.png",
      description:
          "Meat is important for us. Our Meat is the best you can ever get in nigeria and globally"),
  Product(
      name: "Noodles",
      price: 16.99,
      rating: 4.2,
      vendor: "GoodFoos",
      wishList: false,
      image: "burger.png",
      description:
          "Noodles is important for us Our Noodles is the best you can ever get in nigeria and globally"),
];

class Featuyellow extends StatefulWidget {
  @override
  _FeatuyellowState createState() => _FeatuyellowState();
}

class _FeatuyellowState extends State<Featuyellow> {
  int counter = 0;
  bool isAdded = false;
  List<Product> productList = [
    Product(
        name: "Cereals",
        price: 5.99,
        rating: 4.2,
        vendor: "GoodFoos",
        wishList: true,
        image: "images/burger.png",
        description:
            "Cereal is important for us our cereal is the best you can ever get in nigeria and globally"),
    Product(
        name: "Burger Beer",
        price: 12.99,
        rating: 4.1,
        vendor: "GoodFoos",
        wishList: false,
        image: "images/burger.png",
        description:
            "Burger Beer is important for us. Our Burger beer is the best you can ever get in nigeria and globally"),
    Product(
        name: "Meat",
        price: 20.99,
        rating: 3.9,
        vendor: "GoodFoos",
        wishList: true,
        image: "images/beyond-meat-mcdonalds.png",
        description:
            "Meat is important for us. Our Meat is the best you can ever get in nigeria and globally"),
    Product(
        name: "Noodles",
        price: 16.99,
        rating: 2.7,
        vendor: "GoodFoos",
        wishList: true,
        image: "images/burger.png",
        description:
            "Noodles is important for us Our Noodles is the best you can ever get in nigeria and globally"),
  ];

  void _showModalSheet(int index) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        // backgroundColor: white,
        context: context,
        builder: (builder) {
          return StatefulBuilder(builder: (context, state) {
            return Container(
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Image.asset(productList[index].image),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: productList[index].name),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                    color: grey,
                                    offset: Offset(1, 1),
                                    blurRadius: 4)
                              ]),
                          child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: productList[index].wishList
                                  ? Icon(
                                      Icons.favorite,
                                      color: yellow,
                                      size: 18,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: yellow,
                                      size: 18,
                                    )),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: CustomText(
                              text: productList[index].rating.toString(),
                              color: grey,
                              size: 14,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.star,
                            color: yellow,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: yellow,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: yellow,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: grey,
                            size: 16,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CustomText(
                          text: "\$${productList[index].price}",
                          weight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  CustomText(
                    text: "Description",
                    color: grey,
                    size: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(
                      text: productList[index].description,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(color: grey)),
                          child: IconButton(
                              icon: Icon(Icons.remove),
                              iconSize: 24,
                              onPressed: counter == 0
                                  ? null
                                  : () {
                                      updated(state);
                                    }),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Text(
                            '$counter',
                            textAlign: TextAlign.center,
                            // style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(color: grey)),
                          child: IconButton(
                            icon: new Icon(Icons.add),
                            padding: const EdgeInsets.all(0),
                            iconSize: 24,
                            onPressed: () {
                              renewed(state);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Cart()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: CustomText(
                                text: "BUY NOW",
                                color: white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          });
        });
  }
  // void showState(int index) {

  // }
  Future<Null> updated(StateSetter updateState) async {
    updateState(() {
      if (counter != 0) counter--;
    });
  }

  Future<Null> renewed(StateSetter updateState) async {
    updateState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  _showModalSheet(index);
                },
                child: Container(
                  height: 240,
                  width: 200,
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: grey, offset: Offset(1, 1), blurRadius: 4)
                  ]),
                  child: Column(
                    children: [
                      Image.asset(
                        productList[index].image,
                        height: 140,
                        width: 140,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: productList[index].name),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: grey,
                                        offset: Offset(1, 1),
                                        blurRadius: 4)
                                  ]),
                              child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: productList[index].wishList
                                      ? Icon(
                                          Icons.favorite,
                                          color: yellow,
                                          size: 18,
                                        )
                                      : Icon(
                                          Icons.favorite_border,
                                          color: yellow,
                                          size: 18,
                                        )),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: CustomText(
                                  text: productList[index].rating.toString(),
                                  color: grey,
                                  size: 14,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: yellow,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: yellow,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: yellow,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: grey,
                                size: 16,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(
                              text: "\$${productList[index].price}",
                              weight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
