import 'package:flutter/material.dart';
import 'package:tugas_pertemuan02/pages/main_page.dart';
import 'package:tugas_pertemuan02/resources/colors.dart';
import 'package:tugas_pertemuan02/resources/string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: MainPage()
    );
  }
}