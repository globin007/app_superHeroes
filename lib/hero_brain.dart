import 'package:flutter/material.dart';

import 'package:quizzsuperhero/models/answer_model.dart';
import 'package:quizzsuperhero/models/superhero_models.dart';

class QuizzHero {
 
  List<SuperheroModels> superHeroList = [
    SuperheroModels(
        hero: 1,
        urlHero:
            "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/chris-evans-expects-avengers-4-to-be-his-last-mcu-movie_ksk9.jpg",
        answer: [
          AnswerModel(answer: "Capitan America", isCorrect: true, color: Colors.blue),
          AnswerModel(answer: "Black Panther", isCorrect: false, color: Colors.red),
          AnswerModel(answer: "Viuda Negra", isCorrect: false, color: Colors.green),
          AnswerModel(answer: "Hulk", isCorrect: false, color: Colors.orange),
        ]),
    SuperheroModels(
        hero: 2,
        urlHero:
            "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/the-evolution-of-iron-man-in-the-mcu.jpg",
        answer: [
          AnswerModel(answer: "Capitan America", isCorrect: false, color: Colors.purple),
          AnswerModel(answer: "Iron Man", isCorrect: true, color: Colors.yellow),
          AnswerModel(answer: "Hulk", isCorrect: false, color: Colors.teal),
          AnswerModel(answer: "Black Panther", isCorrect: false, color: Colors.cyan),
        ]),
    SuperheroModels(
        hero: 3,
        urlHero:
            "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/173-1730826_thor-ragnarok-wallpaper-marvel-cinematic-universe-thor-ragnarok.jpg",
        answer: [
          AnswerModel(answer: "Capitan America", isCorrect: false, color: Colors.brown),
          AnswerModel(answer: "Black Panther", isCorrect: false, color: Colors.pink),
          AnswerModel(answer: "Thor", isCorrect: true, color: Colors.blueAccent),
          AnswerModel(answer: "Hulk", isCorrect: false, color: Colors.indigo),
        ]),
    SuperheroModels(
        hero: 4,
        urlHero:
            "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/spider-man_main-1280x720.jpg",
        answer: [
          AnswerModel(answer: "Capitan America", isCorrect: false, color: Colors.pink),
          AnswerModel(answer: "Black Panter", isCorrect: false, color: Colors.brown),
          AnswerModel(answer: "Spider Man", isCorrect: true, color: Colors.blueAccent),
          AnswerModel(answer: "Antman", isCorrect: false, color: Colors.purple),
        ]),
    SuperheroModels(
        hero: 2,
        urlHero:
            "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/ocA7mZJmT97HzvesMjkXKA.jpg",
        answer: [
          AnswerModel(answer: "Capitan America", isCorrect: false, color: Colors.purple),
          AnswerModel(answer: "Antman", isCorrect: false, color: Colors.blueAccent),
          AnswerModel(answer: "Viuda Negra", isCorrect: true, color: Colors.indigo),
          AnswerModel(answer: "Black Panter", isCorrect: false, color: Colors.cyan),
        ]),
    SuperheroModels(
        hero: 3,
        urlHero:
            "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/Chadwick-Boseman-as-Black-Panther-Featured-Image.jpg",
        answer: [
          AnswerModel(answer: "Capitan America", isCorrect: false, color: Colors.cyan),
          AnswerModel(answer: "Hulk", isCorrect: false, color: Colors.yellow),
          AnswerModel(answer: "Black Panter", isCorrect: true, color: Colors.purple),
          AnswerModel(answer: "Antman", isCorrect: false, color: Colors.brown),
        ]),
    SuperheroModels(
        hero: 1,
        urlHero:
            "https://oyster.ignimgs.com/wordpress/stg.ign.com/2021/02/hulk.jpg",
        answer: [
          AnswerModel(answer: "Capitan America", isCorrect: false, color: Colors.yellow),
          AnswerModel(answer: "Antman", isCorrect: false, color: Colors.blueAccent),
          AnswerModel(answer: "Black Panter", isCorrect: false, color: Colors.brown),
          AnswerModel(answer: "Hulk", isCorrect: true, color: Colors.purple),
        ]),
    SuperheroModels(
        hero: 4,
        urlHero:
            "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/antman-falcon.jpg",
        answer: [
          AnswerModel(answer: "Capitan America", isCorrect: false, color: Colors.blueAccent),
          AnswerModel(answer: "Black Panter", isCorrect: false, color: Colors.indigo),
          AnswerModel(answer: "Antman", isCorrect: true, color: Colors.purple),
          AnswerModel(answer: "Spider Man", isCorrect: false, color: Colors.yellow),
        ]),
    SuperheroModels(
        hero: 4,
        urlHero:
            "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/mcu-heroes-star-lord.jpg",
        answer: [
          AnswerModel(answer: "Capitan America", isCorrect: false, color: Colors.indigo),
          AnswerModel(answer: "Black Panter", isCorrect: false, color: Colors.yellow),
          AnswerModel(answer: "Star Lord", isCorrect: true, color: Colors.teal),
          AnswerModel(answer: "Antman", isCorrect: false, color: Colors.brown),
        ]),
  ];

  int heroIndex = 0;

  String getHeroImg() {
    return superHeroList[heroIndex].urlHero;
  }

  String getOpcion(int index) {
    return superHeroList[heroIndex].answer[index].answer;
  }

  Color getColor(int index) {
    return superHeroList[heroIndex].answer[index].color;
  }

  bool heroCorrect(int index) {
    return superHeroList[heroIndex].answer[index].isCorrect;
  }

  String getAnswerNumber() {
    return (heroIndex + 1).toString();
  }

  void getHeroNext() {
    if (heroIndex < superHeroList.length - 1) {
      heroIndex++;
    }
  }

  bool isFinished() {
    if (heroIndex > superHeroList.length - 2) {
      return true;
    } else {
      return false;
    }
  }

  void restartQuiz() {
    heroIndex = 0;
  }
}
