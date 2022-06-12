// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 64.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       ElevatedButton.icon(
        //         onPressed: () {},
        //         icon: Icon(Icons.play_arrow),
        //         label: Text("Play"),
        //       ),
        //       ElevatedButton.icon(
        //         onPressed: () {},
        //         icon: Icon(Icons.pause),
        //         label: Text("Pause"),
        //       ),
        //       ElevatedButton.icon(
        //         onPressed: () {},
        //         icon: Icon(Icons.restore),
        //         label: Text("Resett"),
        //       ),
        //     ],
        //   ),
        // ),
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
    for (int i = 0; i < 1; i++) {
      if (index % 3 == 0) {
        replacementText = "${replacementText}Fizz";
      }
      if (index % 5 == 0) {
        replacementText = "${replacementText}Buzz";
      }
    }
    return Row(children: [
      Expanded(child: Center(child: Text("$index", style: TextStyle(fontSize: 32)))),
      Expanded(
          child: Center(
              child: Icon(
        Icons.arrow_right,
        size: 32,
      ))),
      Expanded(child: Center(child: Text(replacementText, style: TextStyle(fontSize: 32)))),
    ]);
  }
}
