import 'package:clean_arch/core/services/services_locator.dart';
import 'package:clean_arch/movies/persintation/screens/movies_screen.dart';
import 'package:flutter/material.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade900
        // primarySwatch: Colors.blue,
      ),
      home: const MainMoviesScreen(),
    );
  }
}

