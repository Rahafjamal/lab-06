import 'package:flutter/material.dart';
import 'package:rahafapp/quizz/introduction.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/1.webp'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton.icon(
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const quizz();
                    }));
                  });
                }),
                label: const Text(
                  "Welcome !",
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
