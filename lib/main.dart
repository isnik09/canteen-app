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
        useMaterial3: true,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            primary: Colors.black,
          ),
        ),
        scaffoldBackgroundColor: BG,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: ACCENTCOLOUR,
            onPrimary: Colors.black,
            textStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ),
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
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double SCREENWIDTH = MediaQuery.of(context).size.width;
    double SCREENHEIGHT = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: const HomePage(),
    );
  }
}
