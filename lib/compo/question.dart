import 'package:flutter/material.dart';
import 'package:rahafapp/compo/answers.dart';

class Qus extends StatelessWidget {
  Qus({
    required this.qus_text,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
    this.correct,
  });

  String? qus_text;
  String? answer_1;

  String? answer_2;

  String? answer_3;

  String? answer_4;
  String? correct;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            "$qus_text",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.amberAccent,
              fontFamily: 'DancingScript',
            ),
          ),
        ),
        Divider(
          height: 50,
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(22),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                answer(correct, answer_1),
                SizedBox(width: 50),
                answer(correct, answer_2),
              ],
            ),
            Divider(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                answer(correct, answer_3),
                SizedBox(width: 50),
                answer(correct, answer_4),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}
