import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itsp/core/contants.dart';

final ThemeData lightTheme = ThemeData(fontFamily: fontFamily);

final SystemUiOverlayStyle systemUiOverlayLight=SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    );
final SystemUiOverlayStyle systemUiOverlayDark=SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    );