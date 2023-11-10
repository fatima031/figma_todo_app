// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:todoapp/login.dart';
import 'package:todoapp/page3.dart';
import 'package:todoapp/registered.dart';

class welcome_view extends StatelessWidget {
  const welcome_view({super.key});

  @override
  Widget build(BuildContext context) {
    // var _mediaQurey = MediaQuery.of(context);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black,
          height: 700,
          width: 700,
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: IconButton.filled(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => page3_view()));
                    },
                    icon: Icon(Icons.arrow_back_ios_sharp),
                  )),
              Center(
                child: Container(
                  child: Text(
                    "Welcome To UpToDo",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  child: Text(
                    "Please Login To Your account Or Create"
                    "your New account To Continue",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.only(left: 75, right: 75)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => login_view()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.transparent),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.only(left: 75, right: 75)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => register_view()));
                          },
                          child: Text(
                            "Create Account",
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
