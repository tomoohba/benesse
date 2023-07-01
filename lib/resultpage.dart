import 'package:flutter/material.dart';

void main() {
  runApp(const ResultPage());
}

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benesse',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResultHome(title: 'benesse Edtech'),
    );
  }
}

class ResultHome extends StatefulWidget {
  const ResultHome({super.key, required this.title});
  final String title;
  @override
  State<ResultHome> createState() => _ResultHomeState();
}

class _ResultHomeState extends State<ResultHome> {
  int _grade = 0;
  int _selectedIndex = 0;

  //void _pushHomePage() async {
  //  /////////
  //  await Navigator.of(context).push(
  //    MaterialPageRoute(
  //      builder: (context) {
  //        return ; ///////遷移先のクラス
  //      },
  //    ),
  //  );
  //  setState(() {});
  //}
  void _ontapedbottom(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        style: TextStyle(fontSize: 35, fontFamily: 'MSゴシック')),
                    Text(
                      '$_grade/10',
                      style: Theme.of(context).textTheme.headlineMedium,
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
                        'HOME',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(170, 100),
                        primary: Colors.grey[300],
                        onPrimary: Colors.purple,
                      ),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      child: const Text(
                        'NEXT',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(170, 100),
                        primary: Colors.grey[300],
                        onPrimary: Colors.purple,
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
