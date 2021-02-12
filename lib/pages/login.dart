import 'package:awesomeapp/background_image.dart';
import 'package:awesomeapp/utiles/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BgImag(), // we have already defined it in background_image.dart
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Card(
                    borderOnForeground: true,
                    color: Colors.white70,
                    child: Form(
                        child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter Username",
                              labelText: "Username",
                              icon: Icon(Icons.person),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password",
                              icon: Icon(Icons.lock),
                            ),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          RaisedButton(
                            onPressed: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) => HomePage()));
                              // },

                              Constants.pref.setBool("loggedIn", true);
                              //Navigator.pushNamed(context, "/home"); // instead of using this we will use "Navigator.pushReplacementNamed(context, "/home");" this mean remove the login page from stack , we don't require after login
                              Navigator.pushReplacementNamed(context, "/home");
                            },
                            child: Text('Sign In'),
                            color: Colors.blue[900],
                            textColor: Colors.white,
                          )
                        ],
                      ),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
