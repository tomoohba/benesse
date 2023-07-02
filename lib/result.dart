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
      MyApp.eng.setScore(i, diff[i]);
    }
    MyApp.qmain.init();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading : false,
        title: Text("Result"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Container>[
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 5),
                    ),
                    height: 450.0,
                    width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text("今回の点数",
                            style: TextStyle(
                                fontSize: 35, fontFamily: 'Noto Sans JP')),
                        Text('$cor' + "/" + '$qsize',
                            style: TextStyle(
                                fontSize: 40, fontFamily: 'Noto Sans JP')),
                        Text("結果： " + '$cor' + "/" + '$qsize',
                            style: TextStyle(
                                fontSize: 20, fontFamily: 'Noto Sans JP')),
                        for (int i = 0; i < difflist.length; i++)
                          Text(unit[i] + "ニガテ度： " + '${diff[i]}' + "%",
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'Noto Sans JP')),
                        for (int i = 0; i < difflist.length; i++)
                          if (difflist[i] >= MyApp.qmain.threshold)
                            Text(MyApp.eng.unitdesc[i],
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontFamily: 'Noto Sans JP')),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text(
                        'ホーム',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 40,
                          fontFamily: "Noto Sans JP",
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(170, 80),
                        primary: Colors.greenAccent,
                        onPrimary: Colors.green[900],
                        elevation: 10,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/home");
                        },
                    ),
                    ElevatedButton(
                      child: const Text(
                        '次へ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: "Noto Sans JP",
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(170, 80),
                        primary: Colors.greenAccent,
                        onPrimary: Colors.green[900],
                        elevation: 10,
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
    );

  }
}
