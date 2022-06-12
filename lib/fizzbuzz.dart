// ignore_for_file: prefer_const_constructors

import 'package:fizzbuzz_definitive_edition/mainstate.dart';
import 'package:fizzbuzz_definitive_edition/model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class Fizzbuzz extends StatefulWidget {
  const Fizzbuzz({
    Key? key,
  }) : super(key: key);

  @override
  State<Fizzbuzz> createState() => _FizzbuzzState();
}

class _FizzbuzzState extends State<Fizzbuzz> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 128,
          child: FittedBox(child: Text("Fizzbuzz")),
        ),
        SizedBox(height: 32),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: FizzContainer(),
            ),
          ),
        ),
      ],
    );
  }

  Widget FizzContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: 10000,
        itemBuilder: (context, index) {
          return RowElement(index);
        },
      ),
    );
  }

  Row RowElement(int index) {
    String replacementText = "";
    bool matchFound = false;
    for (int i = 0; i < mainState.matches.length; i++) {
      if (index % mainState.matches[i].number == 0) {
        replacementText = "$replacementText${mainState.matches[i].word}";
        matchFound = true;
      }
    }
    return Row(children: [
      Expanded(
        child: Center(child: Text("$index", style: TextStyle(fontSize: 24, color: matchFound ? Colors.red : Colors.white))),
      ),
      Expanded(
          child: Center(
              child: Icon(
        Icons.arrow_right,
        size: 24,
        color: matchFound ? Colors.red : Colors.white,
      ))),
      Expanded(child: Center(child: Text(replacementText, style: TextStyle(fontSize: 24, color: matchFound ? Colors.red : Colors.white)))),
    ]);
  }
}
