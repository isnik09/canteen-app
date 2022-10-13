import 'package:flutter/material.dart';

class AddCardNumber extends StatelessWidget {
  const AddCardNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add card number'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/time-select');
          },
          child: const Text('Submit'),
        ),
      ),
    );
  }
}
