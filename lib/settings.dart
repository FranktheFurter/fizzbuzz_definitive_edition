// ignore_for_file: prefer_const_constructors

import 'package:fizzbuzz_definitive_edition/mainstate.dart';
import 'package:fizzbuzz_definitive_edition/model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class Settings extends StatefulWidget {
  const Settings({
    Key? key,
  }) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 128,
          child: FittedBox(child: Text("Settings")),
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
              child: SettingsContainer(),
            ),
          ),
        ),
      ],
    );
  }

  Widget SettingsContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: mainState.matches.length,
        itemBuilder: (context, index) {
          return RowElement(index);
        },
      ),
    );
  }

  Row RowElement(int index) {
    return Row(children: [
      Text("${index + 1}:", style: TextStyle(fontSize: 24, color: Colors.white)),
      SizedBox(width: 16),
      Text(mainState.matches[index].number.toString(), style: TextStyle(fontSize: 24, color: Colors.white)),
      Icon(Icons.arrow_right, size: 24, color: Colors.white),
      Center(child: Text(mainState.matches[index].word, style: TextStyle(fontSize: 24, color: Colors.white))),
    ]);
  }
}
