import 'package:banking_ui/pages/activity.dart';
import 'package:banking_ui/pages/home.dart';
import 'package:banking_ui/pages/my_card.dart';
import 'package:banking_ui/pages/profile.dart';
import 'package:banking_ui/pages/scan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ray Banking',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  

final List<Widget> pages = [
  const Home(title: ''),
  const MyCardPage(), 
  const ScanPage(),
  const Activity(),
  const Profile(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex] ,

    );
  }
}

