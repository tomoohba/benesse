import 'package:benesse_edtech/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class question extends StatelessWidget {
  const question({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'choice',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
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
                    child:const Text('問題',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: const Text('ここに問題文が入ります',
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      elevation: 10,
                    ),
                    child: Text('選択肢１'),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      elevation: 10,
                    ),
                    child: Text('選択肢２'),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      elevation: 10,
                    ),
                    child: Text('選択肢３'),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      elevation: 10,
                    ),
                    child: Text('選択肢４'),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

