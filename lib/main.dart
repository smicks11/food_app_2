import 'package:flutter/material.dart';
import 'package:food_app_2/src/commons.dart';
// import 'package:food_app_2/src/screens/home.dart';
import 'package:food_app_2/src/screens/splash_screen.dart';
// import 'package:shimmer/shimmer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      routes: {
        // 'loading': (_) => LoadingListPage(),
        // 'slide': (_) => SlideToUnlockPage(),
      },
      theme: ThemeData(
        primaryColor: white,
      ),
      home: SplashScreen(),
    );
  }
}




