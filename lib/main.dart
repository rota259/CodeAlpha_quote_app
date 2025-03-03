import 'package:flutter/material.dart';
import 'package:qouteapp/qoutelist.dart';
import 'package:qouteapp/qoutescreen.dart';
import 'package:qouteapp/splashscreen.dart';

void main() {
  runApp(QuoteApp());
}
//r
class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black87,
        appBarTheme: AppBarTheme(color: Colors.deepOrange),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          bodyMedium:  TextStyle(color: Colors.white70),
          bodySmall: TextStyle(color: Colors.white60),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => QuoteScreen(),
        '/quotes': (context) => QuotesListScreen(),
      },
    );
  }
}
