import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Cart'),
          backgroundColor: Colors.white,
        ),
        body:Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

            ],
          ),
        )

      ),
    );
  }
}