import 'package:flutter/material.dart';

TextEditingController searchController = TextEditingController();

const orange = Color.fromARGB(255, 239, 93, 20);
const white = Colors.white;
const black = Colors.black;
const grey = Colors.grey;
const blue = Colors.blue;
Color blueS = Colors.blue.shade800;
const teal = Colors.teal;
const green = Colors.green;
const greyS = Color.fromARGB(255, 202, 202, 202);
Color cardClr2 = Color.fromARGB(255, 243, 243, 243);
Color cyan = Color.fromARGB(146, 38, 197, 218);
const orangeGradient = LinearGradient(
  colors: [orange, Colors.white],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [0.0, 10.0],
  tileMode: TileMode.clamp,
);

var cyanGradient = LinearGradient(
  colors: [Colors.cyan.shade400, Colors.white],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [0.0, 10.0],
  tileMode: TileMode.clamp,
);
const kHeight = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight50 = SizedBox(height: 50);
const kHeight5 = SizedBox(height: 5);
const kHeight3 = SizedBox(height: 3);
const kWidth = SizedBox(width: 10);

var mHeight;
var mWidth;
