import 'package:flutter/material.dart';
import 'main.dart';
import 'questions.dart';


class QuestionPage extends StatefulWidget {
    const QuestionPage({super.key});


  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int _counter = 0;
  

  void _incrementCounter() {
    setState(() {
      _counter++;
      //MyApp.qmain.setAnswer("fire");
    });
  }
  void setone(){
    MyApp.qmain.setChoice(1);
  }
  void settwo(){
    MyApp.qmain.setChoice(2);
  }
  void setthree(){
    MyApp.qmain.setChoice(3);
  }
  void setfour(){
    MyApp.qmain.setChoice(4);
  }

  // int cannot = 0; //苦手度合い
  // int threshold = 6; //苦手閾値、この値を超えると苦手認定
  // int difficulty = 1; // スキップ5点,簡単5点,普通3点,難しい1点, 
  // bool isnotgood = false;
  // void cannotsolve(){
  //   cannot = cannot + difficulty;
  //   if(cannot > threshold){
  //     isnotgood = true;
  //   }
  // }
  String qtxt = MyApp.eng.qlist[MyApp.qmain.qnum];
  List<String> chlist =  MyApp.eng.chlist[MyApp.qmain.qnum];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
 
        title: Text("Answer"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              qtxt,
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
              onPressed: () {Navigator.of(context).pushNamed("/solved");},
              child: const Text('決定'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {Navigator.of(context).pushNamed("/solved");},
              child: const Text('スキップ'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: setone,
              child:  Text(chlist[1]),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: settwo,
              child:  Text(chlist[2]),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: setthree,
              child:  Text(chlist[3]),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: setfour,
              child:  Text(chlist[4]),
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
