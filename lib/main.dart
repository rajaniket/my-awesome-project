import 'package:awesomeapp/pages/home.dart';
import 'package:awesomeapp/pages/login.dart';
import 'package:awesomeapp/utiles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // this will ensure that every thing has initialized or not
  Constants.pref = await SharedPreferences.getInstance();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Awesome App",
    home: Constants.pref.getBool("loggedIn") == true
        ? HomePage()
        : LoginPage(), // chek in pref object loggedIn data has been true or not , if it is true means it is logged in so jump to home page else jump to login page
    theme: ThemeData(
      // The MaterialApp theme property can be used to configure the appearance of the entire app. , intially by default some other colour was used but you can change it
      primarySwatch: Colors
          .purple, // primary swatch --> it is collection of colors and it automatically divide suited colour to text etc according to  your given colour, so every thing you will add will be color of purple like buttons , etc because theme is changed
    ),
    routes: {
      "/login": (context) =>
          LoginPage(), // go to login page from current location
      "/home": (context) => HomePage(),
    },
  ));
}
