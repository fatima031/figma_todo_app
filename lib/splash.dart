import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todoapp/page1.dart';

class splash_view extends StatefulWidget {
  const splash_view({super.key});

  @override
  State<splash_view> createState() => _splash_viewState();
}

class _splash_viewState extends State<splash_view> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => page1_view()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: 400,
            height: 320,
            alignment: Alignment.center,

              decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.center,
                    
                      image: AssetImage("assets/images/checked.jpeg", ),fit: BoxFit.cover
                      )
                      ),
                      
                      
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Text 
                  ("UpTodo", textAlign: TextAlign.end, style: TextStyle(
                     
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                    
                  ),),
                      )
        ],
      ),

                  
    );
  }
}
