import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                padding: EdgeInsets.all(10),
                child: Card(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                  ListTile(
                      leading: Icon(Icons.people_sharp),
                      title: Text('Hilman Ramadhan'),
                      subtitle: Text('@himanski')),
                  Text('This is Card', style: TextStyle(fontSize: 40))
                ])))));
  }
}
