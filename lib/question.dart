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
              margin: const EdgeInsets.only(top: 30, left:10, right:10, bottom: 10),
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
                      onPrimary: Colors.red[900],
                      elevation: 10,
                    ),
                    child: Text('決定', style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {},
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      onPrimary: Colors.green[900],
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
                      onPrimary: Colors.green[900],
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
                      onPrimary: Colors.green[900],
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
                      onPrimary: Colors.green[900],
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

