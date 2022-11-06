import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_api_app/Quiz_screen.dart';
import 'package:quiz_api_app/constant/colors.dart';
import 'package:quiz_api_app/constant/images.dart';
import 'package:quiz_api_app/constant/text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  TextTheme? get textTheme => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuizApp(),
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyText1: GoogleFonts.oswald(textStyle: textTheme?.bodyText1),
        ),
      ),
    );
  }
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 2, color: lightgrey),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.xmark,
                      size: 28,
                      color: Colors.white,
                    )),
              ),
              Image.asset(
                ballon2,
              ),
              const SizedBox(
                height: 20,
              ),
              normalText('Wellcome to our', lightgrey, 22),
              headingText('Quiz App', lightgrey, 32, 'FontWeight.bold'),
              const SizedBox(
                height: 10,
              ),
              normalText(
                  'Do you feel confident? Here you,ll face our the most difficult questions',
                  lightgrey,
                  18),
              const Spacer(),
              InkWell(
                onTap: (() => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Quizscreen()))),
                hoverColor: Colors.pink,
                focusColor: Colors.amber,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 25),
                    alignment: Alignment.center,
                    width: size.width - 100,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(235, 255, 255, 255)),
                    child: headingText('Click here to Start Quiz', darkblue, 16,
                        'FontWeight.bold'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
