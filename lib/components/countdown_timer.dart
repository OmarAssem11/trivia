import 'dart:async';

import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({Key? key}) : super(key: key);
  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  static const maxSeconds = 10;
  int seconds = maxSeconds;
  Timer? timer;
  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (seconds > 0) {
          setState(() => seconds--);
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: .15 * screenHeight,
      width: .15 * screenHeight,
      margin: const EdgeInsets.symmetric(vertical: 32),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: 1 - seconds / maxSeconds,
            strokeWidth: 12,
            valueColor: const AlwaysStoppedAnimation(Colors.white),
            backgroundColor: Colors.pink,
          ),
          Center(
            child: Text(
              '$seconds',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
