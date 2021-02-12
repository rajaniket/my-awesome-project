import 'package:flutter/material.dart';

class BgImag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/BG.jpg',
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.5),
      colorBlendMode: BlendMode.darken,
      // width: 300,   // if the size of the image is heighest among all the widgets then list width will be folllow size of heighest width widget
      // height: 300,
    );
  }
}
