import 'package:flutter/material.dart';

const BG = Color.fromARGB(255, 223, 241, 223);
const ACCENTCOLOUR = Color.fromARGB(255, 211, 171, 106);

// ignore: non_constant_identifier_names
var LIGHT = ThemeData(
  scaffoldBackgroundColor: BG,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ACCENTCOLOUR),
);
var Dark = ThemeData.dark();
