import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 70, 0, 110),
                Color.fromARGB(255, 80, 15, 110)
              ],
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Image.asset("assets/images/quiz-logo.png"),
                const Text("Test yourself with the flutter basic questions!"),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("Start quiz"),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
