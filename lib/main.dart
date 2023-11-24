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
                Image.asset(
                  "assets/images/quiz-logo.png",
                  width: 300,
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text("Test yourself with the flutter basic questions!"),
                const SizedBox(
                  height: 40,
                ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.arrow_right_alt),
                  onPressed: () {},
                  label: const Text("Start quiz"),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
