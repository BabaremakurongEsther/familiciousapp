import 'package:famliciousapp/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FamliciousApp());
}

class FamliciousApp extends StatelessWidget {
  const FamliciousApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Famlicious App",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
          )),
      home: const HomeView(),
    );
  }
}
