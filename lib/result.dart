import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const ResultHome(),
    );
  }
}

class ResultHome extends StatelessWidget {
  const ResultHome({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benesse',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResultPage(),
    );
  }
}

class ResultPage extends StatefulWidget {
  const ResultPage({
    super.key,
  });
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  int _grade = 0;
  int _selectedIndex = 0;

  // void _pushHomePage() async {
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           settings: RouteSettings(name: "/home"),
  //           builder: (BuildContext context) => (HomePage())));
  // }

  void _ontapedbottom(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green[100],
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Container>[
              Container(
                height: 300.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text('今回の点数',
                        style: TextStyle(
                            fontSize: 50, fontFamily: 'Noto Sans JP')),
                    Text(
                      '$_grade/10',
                      style:
                          TextStyle(fontSize: 50, fontFamily: 'Noto Sans JP'),
                    ),
                  ],
                ),
              ),
              Container(
                height: 300.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text(
                        'ホーム',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: "Noto Sans JP",
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(170, 100),
                        primary: Colors.greenAccent,
                        onPrimary: Colors.green[900],
                      ),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      child: const Text(
                        '次へ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: "Noto Sans JP",
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(170, 100),
                        primary: Colors.greenAccent,
                        onPrimary: Colors.green[900],
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ]),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.next_plan,
      //         color: Colors.black,
      //       ),
      //       label: "NEXT",
      //       //backgroundColor: Colors.blue,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.keyboard_return, color: Colors.black),
      //       label: "HOME",
      //       //backgroundColor: Colors.red,
      //     ),
      //   ],

      //   onTap: _ontapedbottom,
      //   type: BottomNavigationBarType.fixed,
      //   // ここで色を設定していても、shiftingにしているので
      //   // Itemの方のbackgroundColorが勝ちます。
      //   //backgroundColor: Colors.red,
      //   enableFeedback: true,
      //   // IconTheme系統の値が優先されます。
      //   iconSize: 18,
      //   // 横向きレイアウトは省略します。
      //   // landscapeLayout: 省略
      //   selectedFontSize: 20,
      //   selectedIconTheme: const IconThemeData(size: 30, color: Colors.green),
      //   selectedLabelStyle: const TextStyle(color: Colors.red),
      //   // ちなみに、LabelStyleとItemColorの両方を選択した場合、ItemColorが勝ちます。
      //   selectedItemColor: Colors.black,
      //   unselectedFontSize: 20,
      //   unselectedIconTheme: const IconThemeData(size: 25, color: Colors.white),
      //   unselectedLabelStyle: const TextStyle(color: Colors.black),
      //   // IconTheme系統の値が優先されるのでこの値は適応されません。
      //   //unselectedItemColor: Colors.red,
      // ),
    );
  }
}
