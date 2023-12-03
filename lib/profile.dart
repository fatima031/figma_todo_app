import 'package:flutter/material.dart';

class profile_view extends StatelessWidget {
  const profile_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Drawer(
      child: Column(
        children: [
          Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50)
          ),
          child: Image(
            
            image: AssetImage("assets/images/checked.jpeg",
             ),
             height: 100,
             width: 100,
              fit: BoxFit.fill,
            ),

            
            
        ),
        
          ),
          Center(
          child: Container(
        child: Text("Martha Hays"),
          ),
          
          ),
          
          Container(
            child: 
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(children: [
                ElevatedButton(onPressed: (){}, child: Text("10 Tasks")), SizedBox(width: 20,), ElevatedButton(onPressed: (){}, child: Text("5 Tasks"))
              ],),
            ),
          ),
          Container(
            child: Column(
              children: [
                ListTile(

                ),
                SizedBox(height: 10,),

                ListTile(

                ),
                SizedBox(height: 10,),

                 ListTile(
                  
                  title: Text("Setting"),
                  

                         ),
                SizedBox(height: 10,),

                ListTile(

                         ),
                SizedBox(height: 10,),

                 ListTile(

                         ),
                SizedBox(height: 10,),

                ListTile(

                         ),
                SizedBox(height: 10,),

                ListTile(

                         ),
                SizedBox(height: 10,),

              ],
            ),
          )
        ],
        
      ),
      
      

      
    ));
  }
}
