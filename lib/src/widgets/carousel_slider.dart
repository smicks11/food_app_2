import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

// class CarouselDemo extends StatefulWidget {
//   CarouselDemo() : super();

//   final String title = "Carousel Demo";

//   @override
//   CarouselDemoState createState() => CarouselDemoState();
// }

// class CarouselDemoState extends State<CarouselDemo> {
//   CarouselSlider carouselSlider;
//   int _current = 0;
//   List imgList = [
//     'images/burger.jpeg',
//     'images/beyond-meat-mcdonalds.png',
//     'images/fufu.jpg',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height*0.6,
//         width: MediaQuery.of(context).size.width*0.6,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//              carouselSlider = CarouselSlider(

//             items: imgList.map((imgUrl) {
//                 return Builder(
//                   builder: (BuildContext context) {
//                     return Container(
//                       width: MediaQuery.of(context).size.width*0.6,
//                       height: MediaQuery.of(context).size.height*0.6,
//                       margin: EdgeInsets.symmetric(horizontal: 10.0),
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                       ),
//                       child: Image.asset(
//                         imgUrl,
//                         height: MediaQuery.of(context).size.height*1.0,
//                         width: MediaQuery.of(context).size.height*1.0,
//                         fit: BoxFit.fill,
//                       ),
//                     );
//                   },
//                 );
//               }).toList(),
//             options: CarouselOptions(
//               autoPlay: false,

//               enlargeCenterPage: true,
//               aspectRatio: 2.0,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   _current = index;
//                 });
//               }
//             ),
//           ),
//         ]

//         ),
//       ),
//     );
//   }
// }

List imgList = [
  'images/burger.jpeg',
  'images/beyond-meat-mcdonalds.png',
  'images/fufu.jpg',
];

// final List<Widget> imageSliders = imgList
//     .map((item) => 
    
//     Container(
//           child: Container(
//             child: ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                 child: Image.asset(
//                   item, 
//                   fit: BoxFit.fitWidth, 
//                   width: 2000,
//                   height: 2000,
//                   )),
//           ),
//         ))
//     .toList();

class ComplicatedImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              // aspectRatio: 2.0,
              
              height: MediaQuery.of(context).size.height*0.5,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
            ),
             items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      // margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Image.asset(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
          ),
        ],
      ),
    );
  }
}
