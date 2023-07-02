import 'package:flutter/material.dart';
import 'main.dart';
import 'questions.dart';

class SolvedPage extends StatefulWidget {
  const SolvedPage({super.key});


  @override
  State<SolvedPage> createState() => _SolvedPageState();
}

class _SolvedPageState extends State<SolvedPage> {


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
        automaticallyImplyLeading : false,

        title: Text("Answer"),
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
                    child: Text('問題',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child:  Text(qtxt,
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),
                    ),
                  ),
                ],
              ),
              //
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    color: Colors.greenAccent,
                    width: 400,
                    child: Text('正答　　　　：' + ans,
                      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    color: Colors.greenAccent,
                    width: 400,
                    child: Text('あなたの解答：' + selected,
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 5),
              ),
              width: 400,
              height: 150,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    child:const Text('解説',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(description,
                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children:[
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {Navigator.of(context).pushNamed(nextpath);},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      onPrimary: Colors.red[900],

                      elevation: 10,
                    ),
                    child: Text('次へ', style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],

            ),


          ],
        ),
      );

  }
}
