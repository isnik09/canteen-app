import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME SCREEN'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/book-a-slot');
          },
          child: const Text('Book appointment'),
        ),
      ),
    );
  }
}
