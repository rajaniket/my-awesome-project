import 'package:flutter/material.dart';
import '../change_name_card.dart';
import '../drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var mytext = "Change Something";
  @override
  void initState() {
    // build intially , used in api call
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App Home"),
        //backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          // scroll view ensure karta hai ki jitna content hai utna hi dikhe
          child: Card(
            child: ChangeNameCard(
                mytext: mytext,
                nameController:
                    _nameController), // for importing it's library use ctrl + . // wraping code with extract widget , it will make new widget with argument that is used inside whole code , see full code down
          ),
        ),
      ),
      drawer: MyDrawer(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // to edit the location of floating button but by default loaction is it's best
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // we want to change variabe so for any change , we have to use setState
            mytext = _nameController.text;
          });
        },
        child: Icon(
          Icons.refresh,
        ),
      ),
    );
  }
}
