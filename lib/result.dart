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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Result"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Container>[
              Container(
                height: 400.0,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text("今回の点数", style: TextStyle(fontSize: 35)),
                    Text('$cor' + "/" + '$qsize',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Noto Sans JP",
                        )),
                    for (int i = 0; i < difflist.length; i++)
                      Text(unit[i] + "ニガテ度： " + '${diff[i]}' + "%",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Noto Sans JP",
                          )),
                    for (int i = 0; i < difflist.length; i++)
                      if (difflist[i] >= MyApp.qmain.threshold)
                        Text(MyApp.eng.unitdesc[i],
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontFamily: "Noto Sans JP",
                            )),
                  ],
                ),
              ),
              Container(
                height: 200.0,
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
                        fixedSize: Size(170, 100),
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
                          color: Colors.black45,
                          fontSize: 40,
                          fontFamily: "Noto Sans JP",
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(170, 100),
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
