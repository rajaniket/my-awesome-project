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
      body: Center(
        child: Container(
          //color: Colors.teal,
          width: 200,
          height: 200,
          alignment:
              Alignment.center, // to align the child within the container
          decoration: BoxDecoration(
            // to decorate the container but if u are using this block then donot use color property of container outside the boxDecoration otherwise error
            //color: Colors.teal,
            shape: BoxShape.circle,
            //borderRadius: BorderRadius.circular(20), // this will not work with shape
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 10,
                offset: Offset(2.0, 8.0),
              )
            ],
            gradient:
                LinearGradient(colors: [Colors.blueAccent, Colors.pinkAccent]),
          ),
          child: Text(
            "I am a box",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
