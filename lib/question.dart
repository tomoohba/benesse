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

  String qtxt = MyApp.eng.qlist[MyApp.qmain.qnum];
  List<String> chlist =  MyApp.eng.chlist[MyApp.qmain.qnum];
  

  @override
  Widget build(BuildContext context) {
    int qnum  = MyApp.qmain.qnum + 1;
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter Demo',
    //   theme: ThemeData(primarySwatch: Colors.green),
    //    home: 
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Question"),
      ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 5),
              ),
              width: 400,
              height: 200,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    child: Text('問題' + '$qnum' + ".",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child:  Text(qtxt,
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,),
                    ),
                  ),
                ],
              ),
              //
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed:  () {Navigator.of(context).pushNamed("/solved");},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      elevation: 10,
                    ),
                    child: Text('決定'),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {Navigator.of(context).pushNamed("/solved");},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      elevation: 10,
                    ),
                    child: Text('スキップ'),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: setone,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      elevation: 10,
                    ),
                    child: Text(chlist[1]),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: settwo,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      elevation: 10,
                    ),
                    child: Text(chlist[2]),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: setthree,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      elevation: 10,
                    ),
                    child: Text(chlist[3]),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: setfour,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      elevation: 10,
                    ),
                    child: Text(chlist[4]),
                  ),
                ),

              ],
            ),
          ],
        ),
      );

      // appBar: AppBar(

      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
 
      //   title: Text("Answer"),
      // ),
      // body: Center(

      //   child: Column(

      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         qtxt,
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //       ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //         ),
      //         onPressed: () {Navigator.of(context).pushNamed("/solved");},
      //         child: const Text('決定'),
      //       ),
      //       ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //         ),
      //         onPressed: () {Navigator.of(context).pushNamed("/solved");},
      //         child: const Text('スキップ'),
      //       ),
      //       ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //         ),
      //         onPressed: setone,
      //         child:  Text(chlist[1]),
      //       ),
      //       ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //         ),
      //         onPressed: settwo,
      //         child:  Text(chlist[2]),
      //       ),
      //       ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //         ),
      //         onPressed: setthree,
      //         child:  Text(chlist[3]),
      //       ),
      //       ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //         ),
      //         onPressed: setfour,
      //         child:  Text(chlist[4]),
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    //);
  }
}
