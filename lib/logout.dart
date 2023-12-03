import 'package:flutter/material.dart';

class logout_view extends StatelessWidget {
  const logout_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getLogoutDialog(),

    );
  }
}
getLogoutDialog() {
  return AlertDialog(
    title: Text("Logout"),
    content: Container(
      height: 100,
      child: Column(
        children: [
          Text("Do you want to logout?"),
          TextField(
            decoration: InputDecoration(hintText: "Feedback!"),
          )
        ],
      ),
    ),
    actions: [
      ElevatedButton(onPressed: () {}, child: Text("Yes")),
      ElevatedButton(onPressed: () {}, child: Text("No"))
    ],
  );
}
