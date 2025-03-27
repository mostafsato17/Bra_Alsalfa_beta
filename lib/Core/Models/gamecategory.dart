import 'package:flutter/material.dart';

class GameCategory {
  final String id;
  final String game;
  final List<String> words;
  final IconData icon;
    final Color iconColor;
  const GameCategory(  {
    required this.id,
    required this.game,
    required this.words,
    required this.icon,
    required this.iconColor,
  });
}
