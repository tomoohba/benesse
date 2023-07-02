import 'package:flutter/material.dart';
import 'main.dart';
import 'questions.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    int cor = MyApp.qmain.correct;
    int qsize = MyApp.qmain.qsize;
    List<int> difflist = MyApp.qmain.difficult;
    List<int> diffsum = MyApp.qmain.diffsum;
    double difficulty;
    List<int> diff = [0, 0, 0];
    List<String> unit = ["", "", ""];
    for (int i = 0; i < difflist.length; i++) {
      difficulty = difflist[i] / diffsum[i] * 100;
      diff[i] = difficulty.toInt();
      unit[i] = MyApp.eng.unitname[i];
    }
    MyApp.qmain.init();

    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Container>[
              Container(
                height: 300.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text("今回の点数",
                        style: TextStyle(fontSize: 35, fontFamily: 'MSゴシック')),
                    Text(
                      '$cor' + "/" + '$qsize',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      "結果： " + '$cor' + "/" + '$qsize',
                    ),
                    for (int i = 0; i < difflist.length; i++)
                      Text(
                        unit[i] + "ニガテ度： " + '${diff[i]}' + "%",
                      ),
                    for (int i = 0; i < difflist.length; i++)
                      if (difflist[i] >= MyApp.qmain.threshold)
                        Text(MyApp.eng.unitdesc[i]),
                  ],
                ),
              ),
              Container(
                height: 300.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text(
                        'ホーム',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: "Noto Sans JP",
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(170, 100),
                        primary: Colors.greenAccent,
                        onPrimary: Colors.green[900],
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/home");
                      },
                    ),
                    ElevatedButton(
                      child: const Text(
                        '次へ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: "Noto Sans JP",
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(170, 100),
                        primary: Colors.greenAccent,
                        onPrimary: Colors.green[900],
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/question");
                      },
                    ),
                  ],
                ),
              ),
            ]),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.next_plan,
      //         color: Colors.black,
      //       ),
      //       label: "NEXT",
      //       //backgroundColor: Colors.blue,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.keyboard_return, color: Colors.black),
      //       label: "HOME",
      //       //backgroundColor: Colors.red,
      //     ),
      //   ],

      //   onTap: _ontapedbottom,
      //   type: BottomNavigationBarType.fixed,
      //   // ここで色を設定していても、shiftingにしているので
      //   // Itemの方のbackgroundColorが勝ちます。
      //   //backgroundColor: Colors.red,
      //   enableFeedback: true,
      //   // IconTheme系統の値が優先されます。
      //   iconSize: 18,
      //   // 横向きレイアウトは省略します。
      //   // landscapeLayout: 省略
      //   selectedFontSize: 20,
      //   selectedIconTheme: const IconThemeData(size: 30, color: Colors.green),
      //   selectedLabelStyle: const TextStyle(color: Colors.red),
      //   // ちなみに、LabelStyleとItemColorの両方を選択した場合、ItemColorが勝ちます。
      //   selectedItemColor: Colors.black,
      //   unselectedFontSize: 20,
      //   unselectedIconTheme: const IconThemeData(size: 25, color: Colors.white),
      //   unselectedLabelStyle: const TextStyle(color: Colors.black),
      //   // IconTheme系統の値が優先されるのでこの値は適応されません。
      //   //unselectedItemColor: Colors.red,
      // ),
    );
  }
}
