import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
          child: Text(
        "Welcome home Page",
        style: TextStyle(
            shadows: [
              Shadow(
                  color: Colors.black26,
                  offset: const Offset(5, 4),
                  blurRadius: 5),
            ],
            color: Colors.blue.shade400,
            fontSize: 35,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}
