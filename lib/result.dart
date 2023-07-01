import 'package:flutter/material.dart';
import 'main.dart';
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    int cor = MyApp.qmain.correct;
    int qsize = MyApp.qmain.qsize;
    List<int> difflist = MyApp.qmain.difficult;
    List<int> diffsum = MyApp.qmain.diffsum;
    double difficulty = difflist[0] / diffsum[0] * 100;
    int diff1 = difficulty.toInt();
    difficulty = difflist[1] / diffsum[1] * 100;
    int diff2 = difficulty.toInt();
    difficulty = difflist[2] / diffsum[2] * 100;
    int diff3 = difficulty.toInt();
    String unit1 = MyApp.eng.unitname[0];
    String unit2 = MyApp.eng.unitname[1];
    String unit3 = MyApp.eng.unitname[2];


    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("result"),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "結果： " + '$cor' + "/" + '$qsize',
            ),
            Text(
              unit1 + "ニガテ度： " + '$diff1' + "%",
            ),
            Text(
              unit2 + "ニガテ度： " + '$diff2' + "%",
            ),
            Text(
              unit3 + "ニガテ度： " + '$diff3' + "%",
            ),
            for(int i = 0; i < difflist.length; i++)
              if(difflist[i] >= MyApp.qmain.threshold) Text(MyApp.eng.unitdesc[i]),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
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
