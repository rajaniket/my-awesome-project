import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App Home"),
        backgroundColor: Colors.deepPurple[900],
      ),
      body: Container(
        color: Colors.grey[850],
        width: MediaQuery.of(context).size.width, // width of screen
        height: MediaQuery.of(context).size.height /
            2, // will give half of screen height
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.orange,
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
