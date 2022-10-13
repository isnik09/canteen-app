import 'package:flutter/material.dart';

class CaptchaPage extends StatelessWidget {
  const CaptchaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate captcha'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/add-card-number');
          },
          child: const Text('Conform'),
        ),
      ),
    );
  }
}
