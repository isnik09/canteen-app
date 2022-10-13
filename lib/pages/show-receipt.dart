import 'package:flutter/material.dart';

class ShowReceipt extends StatelessWidget {
  const ShowReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receipt'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () =>
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false),
        child: const Text('Done'),
      )),
    );
  }
}
