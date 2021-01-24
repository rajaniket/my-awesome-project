import 'package:flutter/material.dart';
import '../drawer.dart';
import 'package:http/http.dart'
    as http; // as http means we want to access that using http keyword
import 'dart:convert'; // to convert json to map,string, etc, You can parse json directly and use the map or you can parse it and put it into a typed object so that your data has more structure and it's easier to maintain.

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var mytext = "Change Something";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data; // by default null
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var result = await http.get(url); // var is of Response type
    // result.body or json is a string representation but we want actual data so it needed to be decode
    // jsonEncode is used to convert map into json
    // jsonDecode is used to convert json to map
    data = jsonDecode(result
        .body); // this will return list of map and one such map ha 5 key,value pair like albumid, id, itle,url,thumbnailurl
    // if data fetched that means data is not null so it will card instead of showing CircularProgressIndicator as we have defined it in down using conditional operator ? : as data fetched , it need to be call setstate for change
    setState(() {});
    // data is type of list<Map> , means there are many objects in it so for accessing title of first object givee index=0 and key='title accordingly it will return result
    print(data[1]['title']);
  }

  @override
  Widget build(BuildContext context) {
    // context state location of widget in widget tree
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App Home"),
        //backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      leading: Image.network(data[index]["url"]),
                      subtitle: Text("ID: ${data[index]["id"]}"),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
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
