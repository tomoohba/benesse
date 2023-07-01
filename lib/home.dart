import 'package:flutter/material.dart';
import 'main.dart';
import 'questions.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Questions q = new Questions();
  void _selectSubject() {
    setState(() {
      MyApp.qmain.setSubject(1);
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children:[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: _selectSubject,
              child: const Text('English'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: ()  {
                  Navigator.of(context).pushNamed("/question");
                },
              child: const Text('Start'),
            )
          ]
        ) // This trailing comma makes auto-formatting nicer for build methods.
      )
    );
  }
}
