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
      home: const MyHomePage(title: 'Benesse'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green, width: 5),
            ),
            width: 400,
            height: 75,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    '科目を選択してください',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    // child:
                    // Stack(
                    //   children: [
                    //     Text(
                    //       '英語',
                    //       style: TextStyle(
                    //         fontWeight: FontWeight.bold,
                    //         fontSize: 25,
                    //         foreground: Paint()
                    //           ..style = PaintingStyle.stroke
                    //           ..strokeWidth = 2
                    //           ..color = Colors.black,
                    //       ),
                    //     ),
                    //     Text(
                    //       '英語',
                    //       style: TextStyle(
                    //         fontWeight: FontWeight.bold,
                    //         fontSize: 25,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 70),
                      elevation: 10,
                      primary: Colors.orange[500],
                      onPrimary: Colors.orange[900],
                    ),
                    child: const Text(
                      '英語',
                      style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 70),
                      elevation: 10,
                      primary: Colors.blue[500],
                      onPrimary: Colors.blue[900],
                    ),
                    child: const Text(
                      '数学',
                      style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          color: Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 70),
                      elevation: 10,
                      primary: Colors.red[500],
                      onPrimary: Colors.red[900],
                    ),
                    child: const Text(
                      '国語',
                      style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          color: Colors.white,
                          fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 70),
                      elevation: 10,
                      primary: Colors.purple[500],
                      onPrimary: Colors.purple[900],
                    ),
                    child: const Text(
                      '物理',
                      style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          color: Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 70),
                      elevation: 10,
                      primary: Colors.pink[500],
                      onPrimary: Colors.pink[900],
                    ),
                    child: const Text(
                      '化学',
                      style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          color: Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 70),
                      elevation: 10,
                      primary: Colors.teal[500],
                      onPrimary: Colors.teal[900],
                    ),
                    child: const Text(
                      '生物',
                      style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          color: Colors.white,
                          fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 70),
                      elevation: 10,
                      primary: Colors.green[500],
                      onPrimary: Colors.green[900],
                    ),
                    child: const Text(
                      '地理',
                      style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          color: Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 70),
                      elevation: 10,
                      primary: Colors.deepOrange[500],
                      onPrimary: Colors.deepOrange[900],
                    ),
                    child: const Text(
                      '日本史',
                      style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          color: Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 70),
                      elevation: 10,
                      primary: Colors.brown[500],
                      onPrimary: Colors.brown[900],
                    ),
                    child: const Text(
                      '世界史',
                      style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          color: Colors.white,
                          fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 70),
                      elevation: 10,
                      primary: Colors.redAccent,
                      onPrimary: Colors.red[900],
                    ),
                    child: const Text(
                      '苦手',
                      style: TextStyle(
                          fontFamily: 'Noto Sans JP',
                          color: Colors.white,
                          fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
