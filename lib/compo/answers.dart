import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  answer(this.correct, this._answer);
  String? correct;
  String? _answer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (correct == _answer) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.amberAccent,
                  actions: [
                    Center(
                      child: Card(
                        child: Column(children: [
                          Card(
                            elevation: 30,
                            child: Text(
                              "Correct , good job !",
                              style: TextStyle(
                                fontFamily: 'DancingScript',
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Divider(
                            height: 30,
                          ),
                        ]),
                      ),
                    ),
                  ],
                );
              });
        } else {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actions: [
                    Card(
                      child: Text(
                        "  wrong answer . try again !",
                        style: TextStyle(
                          fontFamily: 'DancingScript',
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                );
              });
        }
      },
      child: Card(
        color: Colors.amberAccent,
        child: Text(
          "$_answer",
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
