import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
              style: TextStyle(color: Colors.white), "Welcome Flutter"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          // ignore: sort_child_properties_last
          child: Stack(
            children: [
              Positioned(
                // ignore: sort_child_properties_last
                child: Container(
                  color: Colors.yellow,
                  padding: EdgeInsets.all(10),
                  child: Text("Lorem ipsum"),
                ),
                left: 50,
                top: 100,
              )
            ],
          ),
          margin: EdgeInsets.only(top: 100),
          width: 250,
          height: 300,
          color: Colors.blue,
        ),
      ),
    );
  }
}
