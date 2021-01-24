import 'package:flutter/material.dart';
import 'background_image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.mytext,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String mytext;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BgImag(),
        SizedBox(height: 20),
        Text(
          mytext,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            // TextField in Flutter is the most commonly used text input widget that allows users to collect inputs from the keyboard into an app. We can use the TextField widget in building forms, sending messages, creating search experiences, and many more. By default, Flutter decorated the TextField with an underline.
            key: Key('hello'),
            keyboardType:
                TextInputType.text, // this will only give you numeric keyboard
            // obscureText: true,  // this will hide your text like password
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText:
                  ("Enter Something Here"), // this may give you some error because keyboard layout will overlap this so for avoiding that situation wrap the card with singleChildScrollView that will shift or scrool up the card
              labelText: "Name",
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
