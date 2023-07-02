import 'package:flutter/material.dart';
import 'main.dart';
import 'questions.dart';


class QuestionPage extends StatefulWidget {
    const QuestionPage({super.key});


  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
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
    return Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading : false,
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
                      onPrimary: Colors.red[900],
                      elevation: 10,
                    ),
                    child: Text('決定', style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {Navigator.of(context).pushNamed("/solved");},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      onPrimary: Colors.orange[900],
                      elevation: 10,
                    ),
                    child: Text('スキップ', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: setone,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      onPrimary: Colors.green[900],
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
                      onPrimary: Colors.green[900],
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
                      onPrimary: Colors.green[900],
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
                      onPrimary: Colors.green[900],
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
  }
}
