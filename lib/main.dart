import 'package:flutter/material.dart';
import '/pages/home_page.dart';
import '/themes/dark_mode.dart';
import '/themes/light_mode.dart';
import '/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: themeProvider.isDarkMode ? darkMode : lightMode,
    );
  }
}
