import 'package:flutter/material.dart';
import 'package:quiz/Q1.dart';
import 'package:quiz/routues.dart';

class Q4 extends StatefulWidget {
  const Q4({super.key});

  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
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
            title: const Text("Q4"),
            automaticallyImplyLeading: false,
          ),
          body: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                    "Question 4: A company purchased new machinery for 50,000 and estimates its useful life as 5 years with no salvage value. Using the straight-line depreciation method, what would be the annual depreciation expense?",
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
                title: const Text("5,000"),
              ),
              RadioListTile(
                value: 2,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("10,000"),
              ),
              RadioListTile(
                value: 3,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("25,000"),
              ),
              RadioListTile(
                value: 4,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("50,000"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    check();
                    Navigator.pushNamed(context, MyRoutes.qFive);
                  },
                  child: const Text("Next")),
            ],
          ),
        ));
  }

  void check() {
    if (_selectedRadio == 1) {
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
