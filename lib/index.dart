import 'package:flutter/material.dart';
import 'package:todoapp/calendar.dart';
import 'package:todoapp/focus.dart';
import 'package:todoapp/home.dart';
import 'package:todoapp/profile.dart';

class index1_view extends StatefulWidget {
  const index1_view({super.key});

  @override
  State<index1_view> createState() => _index1_viewState();
}

class _index1_viewState extends State<index1_view> {
  int count = 0;
  var selecetedItem = 0;
  
  var pagesData = [calendar_view(), home_view(), focus_view(), profile_view()];
  
  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
      
      
      
      
        backgroundColor: Colors.black,
        
        appBar: AppBar(
          
          backgroundColor: Colors.black54,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  height: 40,
                  width: 40,
                  child: const Image(
                    image: AssetImage(
                      "assets/images/checked.jpeg",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        
       body: 
      
       Center(
        
        
      child: 
      Center(
        child: pagesData[selecetedItem]
      ),
      
      
    ),
        
       

        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => home_view()));
                setState(() {
                  count++;
                });
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
        
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white12,
                ),
                label: "Index",
                backgroundColor: Colors.white12),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month, color: Colors.white12),
                label: "Calendar",
                backgroundColor: Colors.white12),
            BottomNavigationBarItem(
                icon:
                    Icon(Icons.center_focus_weak_sharp, color: Colors.white12),
                label: "Focuse",
                backgroundColor: Colors.white12),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.white12),
                label: "Profile",
                backgroundColor: Colors.white12)
          ],
          currentIndex: selecetedItem,
          onTap: (setValue) {
            setState(() {
              selecetedItem = setValue;
            });
          
          },
          
        )
      
        );
        // pagesData[selecetedItem];
    
    
  }
}
