import 'package:flutter/material.dart';
import 'main.dart';


class NotGoodAtPage extends StatefulWidget {
  const NotGoodAtPage({super.key});


  @override
  State<NotGoodAtPage> createState() => _NotGoodAtPageState();
}

class _NotGoodAtPageState extends State<NotGoodAtPage> {


  @override
  Widget build(BuildContext context) {
    int sum = 0;
    List<int> nl = MyApp.eng.notGoodAtScore;
    for(int i = 0; i < 3; i++){
      sum += nl[i];
    }
    sum = (sum/3).toInt();

     return Scaffold(
      appBar: AppBar(
        title: const Text('ニガテ'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 5),
              ),
              alignment: Alignment.center,
              //adding: const EdgeInsets.all(20),
              child: const Text(
                '苦手を表示',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.orange[500],
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '英語 '+ '$sum' + "%",
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      color: Colors.blue[500],
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '数学 15％',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      color: Colors.red[500],
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '国語 5％',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                     color: Colors.purple[500],
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '物理 0％',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      color:  Colors.pink[500],
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '化学 40％',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      color: Colors.teal[500],
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '生物 20％',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      color:Colors.green[500],
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '地理 40％',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      color: Colors.deepOrange[500],
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '日本史 40％',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      color: Colors.brown[500],
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '世界史 10％',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: const Text(
                'ホーム',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(160, 100),
                elevation: 10,
                primary: Colors.greenAccent,
                onPrimary: Colors.green[900],
              ),
              onPressed: () {Navigator.of(context).pushNamed("/home");},
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
