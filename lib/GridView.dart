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
        body: GridView.count(
          padding: EdgeInsets.all(10),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          crossAxisCount: 3,
          children: List.generate(20, (index) {
            return Container(
              color: Colors.green,
              child: Center(child: Text('Level $index')),
            );
          }),
        ),
      ),
    );
  }
}
