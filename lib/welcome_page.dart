import'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 51, 3, 78),
                Color.fromARGB(255, 128, 7, 184)
              ],
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/quiz-logo.png",
                  width: 300,
                  color: const Color.fromARGB(150, 255, 255, 255),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text("Test yourself with the flutter basic questions!", 
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),
                const SizedBox(
                  height: 40,
                ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.arrow_right_alt),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white
                  ),
                  onPressed: () {},
                  label: const Text("Start quiz"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}