import 'package:flutter/material.dart';
import 'package:rahafapp/models/Ques.dart';

class quizz extends StatefulWidget {
  const quizz({super.key});

  @override
  State<quizz> createState() => _quizzState();
}

class _quizzState extends State<quizz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Quizz introduction :",
            style: TextStyle(fontSize: 20, fontFamily: 'DancingScript')),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/3.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(
              height: 120,
            ),
            Center(
              child: ElevatedButton.icon(
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Quiz();
                    }));
                  });
                }),
                label: const Text(
                  "Let's Start !",
                  style: TextStyle(fontSize: 30, fontFamily: 'DancingScript'),
                ),
                icon: Icon(Icons.smart_toy_outlined),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amberAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
