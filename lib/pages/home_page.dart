import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quizzsuperhero/hero_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  QuizzHero quizzHero = QuizzHero();
  List<Widget> score = [];

  void checkAnswer(int index, String numberQuestion) {
    bool correctAnswer = quizzHero.heroCorrect(index);
    if (quizzHero.isFinished() == true) {
      Alert(
          context: context,
          type: AlertType.error,
          desc: "Se termino el Quizz",
          buttons: [
            DialogButton(
                child: Text(
                  "Reiniciar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  quizzHero.restartQuiz();
                  score.clear();
                  Navigator.pop(context);
                  setState(() {});
                })
          ]).show();
    }

    if (correctAnswer) {
      score.add(itemScore(numberQuestion, true));
    } else {
      score.add(itemScore(numberQuestion, false));
    }
    quizzHero.getHeroNext();
    setState(() {});
  }

  Widget itemScore(String numberQuestion, bool isCorrect) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$numberQuestion: ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        Icon(
          isCorrect ? Icons.check : Icons.close,
          color: isCorrect ? Colors.greenAccent : Colors.redAccent,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282E42),
      appBar: AppBar(
      backgroundColor: Color(0xff282E42),
        title: Text(
          "¿Como se llama el superheroe?",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0), // Ajusta el radio para redondear las esquinas
                  image: DecorationImage(
                    image: NetworkImage(
                      quizzHero.getHeroImg(),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Divider(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: List.generate(4, (index) {
                    return MaterialButton(
                      onPressed: () {
                        checkAnswer(index, quizzHero.getAnswerNumber());
                      },
                      //color: Colors.green,
                      color: quizzHero.getColor(index),
                      child: Text(quizzHero.getOpcion(index)),
                    );
                  }),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: score,
            )
          ],
        ),
      ),
    );
  }
}
