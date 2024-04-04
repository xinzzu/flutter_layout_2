import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final items = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
                style: TextStyle(color: Colors.white), "Welcome Flutter"),
            backgroundColor: Colors.blue,
          ),
          body: ListView.separated(
            padding: const EdgeInsets.all(10.0),
            itemCount: items.length,
            itemBuilder: (BuildContext ctx, int index) {
              // ignore: sized_box_for_whitespace, sort_child_properties_last
              return Container(
                  // ignore: sort_child_properties_last
                  child: Text('Level ${items[index]}'),
                  height: 100);
            },
            separatorBuilder: (BuildContext ctx, int index) => const Divider(),
          )),
    );
  }
}
