import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:emojis/emojis.dart';
// import 'package:emojis/emoji.dart';

class Popular {
  final String image;
  final String name;
  final String amount;
  final String rating;
  final String time;
  

  Popular({this.name, this.amount, this.rating, this.time, @required this.image});
}
