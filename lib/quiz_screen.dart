import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_api_app/constant/text_style.dart';
import 'constant/colors.dart';

class Quizscreen extends StatefulWidget {
  const Quizscreen({Key? key}) : super(key: key);

  @override
  State<Quizscreen> createState() => _QuizscreenState();
}

int seconds = 60;
Timer? timer;

startTimer() {
  timer = Timer.periodic(
    const Duration(seconds: 1),
    (timer) {},
  );
}

class _QuizscreenState extends State<Quizscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [blue, darkblue],
          )),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 2, color: lightgrey),
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        CupertinoIcons.xmark,
                        size: 28,
                        color: Colors.white,
                      )),
                ),
                InkWell(
                  onTap: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      normalText('$seconds', Colors.white, 25),
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          value: seconds / 60,
                          valueColor: const AlwaysStoppedAnimation(
                            Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: lightgrey),
                  ),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.heart_fill,
                        color: Colors.white,
                        size: 18,
                      ),
                      label: normalText('Like', Colors.white, 14)),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
