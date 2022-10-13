import './pages/captcha-page.dart';
import 'package:flutter/material.dart';
import './pages/home-page.dart';
import './pages/book-slot.dart';
import './pages/add-card-number.dart';
import './pages/time-select.dart';
import './pages/show-receipt.dart';
import '../theme-data.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: BG,
      ),
      darkTheme: ThemeData.dark(),
      title: 'Canteen App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/book-a-slot': (context) => const BookSlot(),
        '/captcha-page': (context) => const CaptchaPage(),
        '/add-card-number': (context) => const AddCardNumber(),
        '/time-select': (context) => const TimeSelect(),
        '/show-receipt': (context) => const ShowReceipt(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
