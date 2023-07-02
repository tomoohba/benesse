import 'dart:ffi';

import 'package:flutter/material.dart';
import '../solved.dart';
import '../home.dart';
import '../question.dart';
import '../questions.dart';
import '../solved.dart';
import '../result.dart';
import '../notgoodat.dart';
import '../englishdatabase.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static Questions qmain = new Questions();
  static EnglishDataBase eng = new EnglishDataBase();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application

        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        //primarySwatch: Colors.blue,
        primarySwatch: Colors.green,
        //useMaterial3: true,

      ),
      home: HomePage(),
       routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new HomePage(),
          '/question': (BuildContext context) => new QuestionPage(),
          '/solved': (BuildContext context) => new SolvedPage(),
          '/result': (BuildContext context) => new ResultPage(),
          '/notgoodat': (BuildContext context) => new NotGoodAtPage(),
        }
    );
  }
}
