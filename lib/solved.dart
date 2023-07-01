import 'package:flutter/material.dart';
import 'main.dart';
import 'questions.dart';

class SolvedPage extends StatefulWidget {
  const SolvedPage({super.key});


  @override
  State<SolvedPage> createState() => _SolvedPageState();
}

class _SolvedPageState extends State<SolvedPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  String qtxt = MyApp.eng.qlist[MyApp.qmain.qnum];
  List<String> chlist =  MyApp.eng.chlist[MyApp.qmain.qnum];
  String selected = MyApp.eng.chlist[MyApp.qmain.qnum][MyApp.qmain.choice];
  String ans = MyApp.eng.chlist[MyApp.qmain.qnum][MyApp.eng.ansnum[MyApp.qmain.qnum]];
  String description = MyApp.eng.desc[MyApp.qmain.qnum];
  String nextpath = "/question";
  


  @override
  Widget build(BuildContext context) {
    int qnum = MyApp.qmain.qnum;
    String qtxt = MyApp.eng.qlist[MyApp.qmain.qnum];
    List<String> chlist =  MyApp.eng.chlist[MyApp.qmain.qnum];
    String selected = MyApp.eng.chlist[MyApp.qmain.qnum][MyApp.qmain.choice];
    String ans = MyApp.eng.chlist[MyApp.qmain.qnum][MyApp.eng.ansnum[MyApp.qmain.qnum]];
    String description = MyApp.eng.desc[MyApp.qmain.qnum];
    String nextpath = "/question";

    if(MyApp.qmain.qnum == MyApp.qmain.qsize-1){
      nextpath = "/result";
    }

    if(MyApp.qmain.choice == MyApp.eng.ansnum[MyApp.qmain.qnum]){
      MyApp.qmain.incCorrect(MyApp.eng.unit[qnum], MyApp.eng.difficulty[qnum]);
    }else{
      MyApp.qmain.wrong(MyApp.eng.unit[qnum], MyApp.eng.difficulty[qnum]);
    }

    MyApp.qmain.incQnum();
    MyApp.qmain.setChoice(0);


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("answer"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              qtxt,
            ),
            Text(
              "答え: " + ans,
            ),
            Text(
              "あなたの回答: "+ selected,
            ),
            Text(
              description,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {Navigator.of(context).pushNamed(nextpath);},
              child: const Text('次へ'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
