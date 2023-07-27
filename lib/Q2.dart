import 'package:flutter/material.dart';
import 'package:quiz/Q1.dart';
import 'package:quiz/routues.dart';

class Q2 extends StatefulWidget {
  const Q2({super.key});

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {
  int _selectedRadio = 0;

  Future<bool> _onWillPop() async {
    return false; //<-- SEE HERE
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Q2"),
            automaticallyImplyLeading: false,
          ),
          body: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                    "Question 2: Which of the following financial statements provides a snapshot of a company's financial position at a specific point in time?",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 30.0,
              ),
              RadioListTile(
                value: 1,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("Income Statement"),
              ),
              RadioListTile(
                value: 2,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("Balance Sheet"),
              ),
              RadioListTile(
                value: 3,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("Cash Flow Statement"),
              ),
              RadioListTile(
                value: 4,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("Statement of Retained Earnings"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    check();
                    Navigator.pushNamed(context, MyRoutes.qThree);
                  },
                  child: const Text("Next")),
            ],
          ),
        ));
  }

  void check() {
    if (_selectedRadio == 2) {
      correctCount++;
    }
  }

  void onRadioChange(int? value) {
    if (value != null) {
      setState(() {
        _selectedRadio = value;
      });
    }
  }
}
