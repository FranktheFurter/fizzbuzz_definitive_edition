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
        Text("Fizzbuzz"),
        Spacer(),
        Container(
          color: Colors.black.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow),
                  label: Text("Play"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.pause),
                  label: Text("Pause"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.restore),
                  label: Text("Resett"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
