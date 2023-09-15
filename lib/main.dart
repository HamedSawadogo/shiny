import 'package:flutter/material.dart';
import 'package:skiny/pages/Homepage.dart';
import 'package:skiny/pages/Profils.dart';
import 'package:skiny/pages/QuizPage.dart';
import 'package:skiny/utils/const.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: appBarColor,
      theme: ThemeData(primaryColor: appBarColor, primarySwatch: Colors.purple),
      home: Scaffold(
        body: [
          const HomePage(),
          const DevsProfils(),
          const QuizPage()
        ][_curentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _curentIndex = value;
            });
          },
          currentIndex: _curentIndex,
          items: const [
            BottomNavigationBarItem(
              label: "Accueil",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(label: "profils", icon: Icon(Icons.people)),
            BottomNavigationBarItem(
                label: "tests", icon: Icon(Icons.leak_add_rounded))
          ],
        ),
      ),
    );
  }
}
