import 'package:flutter/material.dart';
import 'package:quiz/Q1.dart';
import 'package:quiz/routues.dart';

class Q5 extends StatefulWidget {
  const Q5({super.key});

  @override
  State<Q5> createState() => _Q5State();
}

class _Q5State extends State<Q5> {
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
            title: const Text("Q5"),
            automaticallyImplyLeading: false,
          ),
          body: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                    "Question 5: How are dividends to common shareholders classified in the statement of cash flows?",
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
                title: const Text("Operating Activities"),
              ),
              RadioListTile(
                value: 2,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("Investing Activities"),
              ),
              RadioListTile(
                value: 3,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("Financing Activities"),
              ),
              RadioListTile(
                value: 4,
                groupValue: _selectedRadio,
                onChanged: onRadioChange,
                title: const Text("Non-cash Activities"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    check();
                    Navigator.pushNamed(context, MyRoutes.res);
                  },
                  child: const Text("Next")),
            ],
          ),
        ));
  }

  void check() {
    if (_selectedRadio == 3) {
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
