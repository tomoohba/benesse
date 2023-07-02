import 'package:flutter/material.dart';



class NotGoodAtPage extends StatefulWidget {
  const NotGoodAtPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<NotGoodAtPage> createState() => _NotGoodAtPageState();
}

class _NotGoodAtPageState extends State<NotGoodAtPage> {


  @override
  Widget build(BuildContext context) {

     return Scaffold(
      appBar: AppBar(
        title: const Text('苦手度を表示'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '教科：□％',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '教科：□％',
                        style: TextStyle(
                          fontSize: 30,
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
                      color: Colors.green,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '教科：□％',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '教科：□％',
                        style: TextStyle(
                          fontSize: 30,
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
                      color: Colors.yellow,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '教科：□％',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '教科：□％',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: const Text('スタート画面に戻る'),
            ),
          ],
        ),
      ),
    );
  }
}
