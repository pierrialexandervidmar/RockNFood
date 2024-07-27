import 'package:get/get.dart';
import 'package:flutter/widgets.dart';

import 'splash/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppBar());
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Comanda',
      theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}