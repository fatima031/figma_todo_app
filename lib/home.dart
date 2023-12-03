import 'package:flutter/material.dart';
import 'package:todoapp/logout.dart';

class home_view extends StatelessWidget {
  const home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: logout_view(),
    );
  }
}
