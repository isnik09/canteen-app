import 'package:flutter/material.dart';

class TimeSelect extends StatelessWidget {
  const TimeSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('time'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/show-receipt'),
        child: const Text("Book oppointment"),
      )),
    );
  }
}
