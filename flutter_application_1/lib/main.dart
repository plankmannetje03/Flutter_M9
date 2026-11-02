import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_me.dart';
import 'package:flutter_application_1/cookie_clicker.dart';
import 'package:flutter_application_1/top_10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  final pages = const [AboutMe(), Top10Widget(), CookieClicker()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About Me'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Top 10'),
          BottomNavigationBarItem(
            icon: Icon(Icons.cookie),
            label: 'Cookie Clicker',
          ),
        ],
      ),
    );
  }
}
