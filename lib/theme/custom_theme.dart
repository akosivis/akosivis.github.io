import 'package:flutter/material.dart';


class CustomTheme {
  static ThemeData get lightTheme { //1
    return ThemeData( //2
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        // fontFamily: 'Biryani',
        // textTheme: Typography().black.apply(
        //     fontFamily: 'Biryani'
        // ),
        brightness: Brightness.light
    );
  }

  // Theme.of(context).textTheme.merge(Typography().black).apply(...)

  static ThemeData get darkTheme { //1
    return ThemeData( //2
        primaryColor: Colors.brown,
        scaffoldBackgroundColor: Colors.black87,
        // fontFamily: 'Biryani', //3
        // textTheme: Typography().white.apply(
        //     fontFamily: 'Biryani'
        // ),
        brightness: Brightness.dark
    );
  }
}