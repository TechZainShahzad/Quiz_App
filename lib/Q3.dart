import 'package:flutter/material.dart';
import 'package:quiz/Q1.dart';
import 'package:quiz/routues.dart';

class Q3 extends StatefulWidget {
  const Q3({super.key});

  @override
  State<Q3> createState() => _Q3State();
}

class _Q3State extends State<Q3> {
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
            title: const Text("Q3"),
            automaticallyImplyLeading: false,
          ),
          body: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                    "Question 3: In double-entry accounting, which accounts increase with a credit entry?",
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
                title: const Text("Assets and Liabilities"),
              ),
              RadioListTile(
                value: 2,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("Assets and Equity"),
              ),
              RadioListTile(
                value: 3,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("Expenses and Revenues"),
              ),
              RadioListTile(
                value: 4,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("Liabilities and Equity"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    check();
                    Navigator.pushNamed(context, MyRoutes.qFour);
                  },
                  child: const Text("Next")),
            ],
          ),
        ));
  }

  void check() {
    if (_selectedRadio == 4) {
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
