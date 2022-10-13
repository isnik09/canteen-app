import 'package:flutter/material.dart';

class BookSlot extends StatelessWidget {
  const BookSlot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book a slot'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/captcha-page');
          },
          child: const Text('Continue'),
        ),
      ),
    );
  }
}
