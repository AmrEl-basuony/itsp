import 'package:flutter/material.dart';

const Color mainColor = Color(0xff2A286B);
const Color darkModeColor = Color(0xff222222);
const Color secondDarkColor = Color(0xff4E4E4E);

const Color navBarActiveItemColor = Color(0xff539DF3);

const Color backgroundColor = Color(0xffefefef);
const Color categoriesTextColor = Color(0xff4F5A68);
const Color blueGrayColor = Color(0xffD2DFFB);
const Color hintColor = Color(0xff8C949D);
const Color backButtonColor = Color(0xffdadada);
const Color anotherGrayColor = Color(0xff6A6894);

const Color grayColor = Color(0xff7E7E83);
const Color lightGrayColor = Color(0xffC6C6C6);
const Color redColor = Color(0xffE72828);
const Color cyanColor = Color(0xffBEE2FD);
const Color blueColor = Color(0xff0D70BA);
const Color yellowColor = Color(0xffFDF1BB);
const Color brownColor = Color(0xff916000);
const Color lightGreenColor = Color(0xffC7F0CA);
const Color greenColor = Color(0xff34A300);
const Color lightOrangeColor = Color(0xffFFD1B8);
const Color orangeColor = Color(0xffFF5C00);

const LinearGradient lightLinearGradient = LinearGradient(
  colors: [
    mainColor,
    Color(0xff0861B3),
  ],
);
final LinearGradient opaceLightLinearGradient = LinearGradient(
  colors: [
    mainColor.withOpacity(0.4),
    Color(0xff0861B3).withOpacity(0.4),
  ],
);

final LinearGradient blueGrayLinearGradient = LinearGradient(
  colors: [
    blueGrayColor.withOpacity(0.51),
    Colors.white.withOpacity(0.12),
  ],
);

final LinearGradient overImageGradient = LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors: [
    mainColor,
    mainColor,
    mainColor.withOpacity(0.9),
    mainColor.withOpacity(0.15),
  ],
);

final LinearGradient darkGradient = LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors: [
    Colors.black,
    Colors.transparent,
  ],
);
