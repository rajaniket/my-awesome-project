import 'package:awesomeapp/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
    theme: ThemeData(
      // The MaterialApp theme property can be used to configure the appearance of the entire app. , intially by default some other colour was used but you can change it
      primarySwatch: Colors
          .purple, // primary swatch --> it is collection of colors and it automatically divide suited colour to text etc according to  your given colour, so every thing you will add will be color of purple like buttons , etc because theme is changed
    ),
  ));
}
