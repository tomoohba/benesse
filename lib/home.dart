import 'package:flutter/material.dart';
import 'main.dart';
import 'questions.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _selectSubject() {
    setState(() {
      MyApp.qmain.setSubject(1);
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Home"),
      ),
      body: Column(
        children: [
          const Text(
            '科目を選択してください。',
            style: TextStyle(
              fontSize: 30,
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
                      _selectSubject();
                      Navigator.of(context).pushNamed("/question");
                    },
                    child: Text(
                      '英語',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(100, 70)), // 幅: 100, 高さ: 70
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    child: Text(
                      '数学',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(100, 70)), // 幅: 100, 高さ: 70
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    child: Text(
                      '国語',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(100, 70)), // 幅: 100, 高さ: 70
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
                    child: Text(
                      '物理',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(100, 70)), // 幅: 100, 高さ: 70
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    child: Text(
                      '化学',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(100, 70)), // 幅: 100, 高さ: 70
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    child: Text(
                      '生物',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(100, 70)), // 幅: 100, 高さ: 70
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
                    child: Text(
                      '地理',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(100, 70)), // 幅: 100, 高さ: 70
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    child: Text(
                      '日本史',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(100, 70)), // 幅: 100, 高さ: 70
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ボタンが押された時の処理
                    },
                    child: Text(
                      '世界史',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(100, 70)), // 幅: 100, 高さ: 70
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
                      Navigator.of(context).pushNamed("/notgoodat");
                    },
                    child: Text(
                      '苦手',
                      style: TextStyle(fontSize: 25),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(200, 70)),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.red), // ボタンの背景色を青に設定 // 幅: 200, 高さ: 70
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // body: Center(
      //   child: Column(
      //     children:[
      //       ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //         ),
      //         onPressed: _selectSubject,
      //         child: const Text('English'),
      //       ),
      //       ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //         ),
      //         onPressed: ()  {
      //             Navigator.of(context).pushNamed("/question");
      //           },
      //         child: const Text('Start'),
      //       ),
      //       ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //         ),
      //         onPressed: ()  {
      //             Navigator.of(context).pushNamed("/notgoodat");
      //           },
      //         child: const Text('ニガテ'),
      //       )
      //     ]
      //   ) // This trailing comma makes auto-formatting nicer for build methods.
      // )
    );
  }
}
