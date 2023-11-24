import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Color.fromARGB(255, 70, 0, 110), Color.fromARGB(255, 80, 15, 110)],
          )),
        ),
      ),
    ),
  );
}
