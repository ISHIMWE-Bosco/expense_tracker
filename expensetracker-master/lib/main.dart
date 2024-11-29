import 'package:flutter/material.dart';
import 'google_sheets_api.dart';
import 'homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleSheetsApi().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900], // Dark grey background
        primarySwatch: Colors.blue, // Button and accent color
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 14.0, color: Colors.black),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Button color
            foregroundColor: Colors.white, // Text color on buttons
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.grey, // AppBar color
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
