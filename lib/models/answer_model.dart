import 'package:flutter/material.dart';

class AnswerModel {
  String answer;
  bool isCorrect;
  Color color; 


  AnswerModel({
    required this.answer,
    required this.isCorrect,
    required this.color, // Inicializar color
  });
}