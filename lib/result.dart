import 'package:flutter/material.dart';
import 'main.dart';
import 'englishdatabase.dart';
import 'questions.dart';


class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


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
    List<int> diff= [0, 0, 0];
    List<String> unit = ["", "", ""];
    for(int i = 0; i < difflist.length; i++){
      difficulty = difflist[i] / diffsum[i] * 100;
      diff[i] = difficulty.toInt();
      EnglishDataBase.notGoodAtScore[i] = diff[i];
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
                    for(int i = 0; i < difflist.length; i++)
                      Text(unit[i] + "ニガテ度： " + '${diff[i]}' + "%",),
                    for(int i = 0; i < difflist.length; i++)
                      if(difflist[i] >= MyApp.qmain.threshold) Text(MyApp.eng.unitdesc[i]), //ニガテの抽出
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
                        'HOME',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(170, 100),
                        primary: Colors.grey[300],
                        onPrimary: Colors.purple,
                      ),
                      onPressed: () {Navigator.of(context).pushNamed("/home");},
                    ),
                    ElevatedButton(
                      child: const Text(
                        'NEXT',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(170, 100),
                        primary: Colors.grey[300],
                        onPrimary: Colors.purple,
                      ),
                      onPressed: () {Navigator.of(context).pushNamed("/question");},
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );


    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     title: Text("result"),
    //   ),
    //   body: Center(
    //     child: Column(
          
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Text(
    //           "結果： " + '$cor' + "/" + '$qsize',
    //         ),
    //         Text(
    //           unit1 + "ニガテ度： " + '$diff1' + "%",
    //         ),
    //         Text(
    //           unit2 + "ニガテ度： " + '$diff2' + "%",
    //         ),
    //         Text(
    //           unit3 + "ニガテ度： " + '$diff3' + "%",
    //         ),
    //         for(int i = 0; i < difflist.length; i++)
    //           if(difflist[i] >= MyApp.qmain.threshold) Text(MyApp.eng.unitdesc[i]),
    //       ],
    //     ),
    //   ),
    // );
  }
}
