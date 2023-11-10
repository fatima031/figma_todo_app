import 'package:flutter/material.dart';
import 'package:todoapp/calendar.dart';
import 'package:todoapp/home.dart';

class index1_view extends StatefulWidget {
  const index1_view({super.key});

  @override
  State<index1_view> createState() => _index1_viewState();
}

class _index1_viewState extends State<index1_view> {
  int myIndex = 0;

  List<Widget> widgetList = [
    ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => home_view()));
        },
        child: const Text("Home")),
    ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => calendar_view()));
        },
        child: Text("Calendar")),
    const Text(
      "Focuse",
      style: TextStyle(fontSize: 40),
    ),
    const Text(
      "Profile",
      style: TextStyle(fontSize: 40),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: widgetList[myIndex],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu,
                color: Colors.black,
                size: 30,
              ),
              Container(
                height: 40,
                width: 40,
                child: const Image(
                  image: AssetImage("assets/images/checked.jpeg"),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          // showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.indigo,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(color: Colors.black, Icons.home),
                label: "Home",
                backgroundColor: Colors.yellow),
            const BottomNavigationBarItem(
                icon: Icon(color: Colors.black, Icons.calendar_month),
                label: "Calendar",
                backgroundColor: Colors.indigo),
            const BottomNavigationBarItem(
                icon: Icon(color: Colors.black, Icons.watch_later_outlined),
                label: "Focuse",
                backgroundColor: Colors.lime),
            const BottomNavigationBarItem(
                icon: Icon(color: Colors.black, Icons.people_alt),
                label: "Profile",
                backgroundColor: Colors.deepOrangeAccent),
          ]),

      // Container(
      //   padding: EdgeInsets.symmetric(
      //     horizontal: 15
      //   ),
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.circular(20),
      //     ),
      //     child: TextField(
      //       decoration: InputDecoration(
      //         contentPadding: EdgeInsets.all(0),
      //         prefixIcon: Icon(Icons.search,
      //         color: Colors.black,
      //         size: 20,),
      //         prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 25),
      //         border: InputBorder.none,
      //         hintText: "Search",
      //         hintStyle: TextStyle(
      //           color: Colors.grey
      //         )
      //       ),
      //     )

      // ),
      //       Container(
      //         child: Column(

      //         ),
      //       )
      //     ],
      //   )

      // ),
    );
  }
}
