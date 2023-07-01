import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'benesse Edtech'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _grade = 0;

  void _incrementCounter() {
    setState(() {
      _grade++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('今回の点数', style: TextStyle(fontSize: 35)),
            Text(
              '$_grade/10',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        unselectedLabelStyle: TextStyle(fontSize: 35, color: Colors.black),
        unselectedFontSize: 45,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.next_plan,
              color: Colors.black,
            ),
            label: '次の10問',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_return),
            label: "HOME",
          ),
        ],
        backgroundColor: Colors.lightBlue,
        onTap: (index) => debugPrint("$index"),
      ),
    );
  }
}
