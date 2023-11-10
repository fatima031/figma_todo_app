import 'package:flutter/material.dart';
import 'package:todoapp/page2.dart';
import 'package:todoapp/welcome.dart';

class page3_view extends StatelessWidget {
  const page3_view({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQiery = MediaQuery.of(context);
    return Container(
      width: 700,
      height: 700,
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 4),
            child: Container(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page2_view()));
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: _mediaQiery.size.height * 0.5,
              width: _mediaQiery.size.width * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/organizeYourTasks.jpeg"),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Center(
            child: Container(
              height: 50,
              child: Text(
                "Organize Your Task",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 2),
          Center(
            child: Container(
              height: 50,
              child: Expanded(
                child: Text(
                  "You Can Organize Your Daily Task By"
                  " Adding Your Tasks Into Separate Categories",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => page2_view()));
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => welcome_view()));
                    },
                    child: Text("Next"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
