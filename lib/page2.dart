import 'package:flutter/material.dart';
import 'package:todoapp/page1.dart';
import 'package:todoapp/page3.dart';

class page2_view extends StatelessWidget {
  const page2_view({super.key});

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
                      image: AssetImage("assets/images/createDailyRoutine.jpeg"),
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
                "Create daily Routine",
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
                  "In UpToDo You Can Create Your"
                   "Persnolized Routine To Stay Productine",
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
                              builder: (context) => page1_view()));
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
                              builder: (context) => page3_view()));
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
