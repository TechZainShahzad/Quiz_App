import 'package:flutter/material.dart';
import 'package:quiz/Q1.dart';
import 'package:quiz/routues.dart';

class resultPage extends StatefulWidget {
  const resultPage({super.key});

  @override
  State<resultPage> createState() => _resultPageState();
}

int marks = 0;

class _resultPageState extends State<resultPage> {
  Future<bool> _onWillPop() async {
    return false; //<-- SEE HERE
  }

  @override
  Widget build(BuildContext context) {
    marks = calculateMarks();
    bool isPassed = checkPass();

    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Quiz Result'),
            automaticallyImplyLeading: false,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Your Quiz Marks:',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Text(
                  '$marks',
                  style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  isPassed
                      ? 'Congratulations! You Passed!'
                      : 'Sorry! You Failed!',
                  style: TextStyle(
                    fontSize: 24,
                    color: isPassed ? Colors.green : Colors.red,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      correctCount = 0;
                      Navigator.pushNamed(context, MyRoutes.qOne);
                    },
                    child: const Text("attempt again")),
              ],
            ),
          ),
        ));
  }

  int calculateMarks() {
    int output = 0;
    output = correctCount * 20;
    return output;
  }

  bool checkPass() {
    bool check = false;
    if (marks >= 40) {
      check = true;
    }
    return check;
  }
}
