import 'package:flutter/material.dart';

import '../compo/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          bottom: TabBar(tabs: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.question_answer),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.question_answer),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.question_answer),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.question_answer),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.question_answer),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.question_answer),
            ),
          ]),
          title: Text(
            "Quiz App",
            style: TextStyle(fontSize: 25, fontFamily: 'DancingScript'),
          ),
        ),
        body: TabBarView(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/1.webp'),
                opacity: 420,
              ),
            ),
            child: Qus(
                correct: "Amman",
                answer_1: "Zarqa'a",
                answer_2: "Irbid",
                answer_3: "Amman",
                answer_4: "Al-Karak",
                qus_text: "What is the capital of Jordan ?"),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/1.webp'),
                opacity: 420,
              ),
            ),
            child: Qus(
                correct: "Arabic",
                answer_1: "English",
                answer_2: "Spanish",
                answer_3: "Arabic",
                answer_4: "Franch",
                qus_text: "What language is spoken in Jordan?"),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/1.webp'),
                opacity: 420,
              ),
            ),
            child: Qus(
                correct: "Yes",
                answer_1: "Yes",
                answer_2: "No",
                answer_3: "",
                answer_4: "",
                qus_text: "Can we swim in dead sea?"),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/1.webp'),
                opacity: 420,
              ),
            ),
            child: Qus(
                correct: "Rabbit",
                answer_1: "Amman",
                answer_2: "Rabbit",
                answer_3: "Um qais",
                answer_4: "Zarqa'a",
                qus_text: "what was amman called before ?"),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/1.webp'),
                opacity: 420,
              ),
            ),
            child: Qus(
                correct: "Yes",
                answer_1: "Yes",
                answer_2: "No",
                answer_3: "",
                answer_4: "",
                qus_text: "Can you drink alchohol in Jordan ?"),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/1.webp'),
                opacity: 420,
              ),
            ),
            child: Qus(
                correct: "Asia",
                answer_1: "Asia",
                answer_2: "Europe",
                answer_3: "south america",
                answer_4: "north america",
                qus_text: "Where Jordan is located??"),
          ),
        ]),
      ),
    );
  }
}
