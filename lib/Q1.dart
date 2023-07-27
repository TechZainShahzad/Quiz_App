import 'package:flutter/material.dart';
import 'package:quiz/routues.dart';

class MyRadioApp extends StatefulWidget {
  const MyRadioApp({super.key});

  @override
  _MyRadioAppState createState() => _MyRadioAppState();
}

int correctCount = 0;

class _MyRadioAppState extends State<MyRadioApp> {
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
            title: const Text('Q1'),
            automaticallyImplyLeading: false,
          ),
          body: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Question 1: Company XYZ purchased a new piece of equipment for 10,000. The equipment is expected to be used for five years and has no salvage value. Using straight-line depreciation method, what will be the annual depreciation expense for this equipment?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              RadioListTile(
                title: const Text("2,000"),
                value: 1,
                groupValue: _selectedRadio,
                onChanged: _onRadioChanged,
              ),
              RadioListTile(
                title: const Text('1,000'),
                value: 2,
                groupValue: _selectedRadio,
                onChanged: _onRadioChanged,
              ),
              RadioListTile(
                title: const Text('10,000'),
                value: 3,
                groupValue: _selectedRadio,
                onChanged: _onRadioChanged,
              ),
              RadioListTile(
                title: const Text('5,000'),
                value: 4,
                groupValue: _selectedRadio,
                onChanged: _onRadioChanged,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    check();
                    Navigator.pushNamed(context, MyRoutes.qTwo);
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

  void _onRadioChanged(int? value) {
    if (value != null) {
      setState(() {
        _selectedRadio = value;
      });
    }
  }
}
