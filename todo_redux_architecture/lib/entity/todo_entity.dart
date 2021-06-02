import 'package:flutter/foundation.dart';

class TodoEntity {
  final String id;
  final String title;
  final String? desc;
  final bool isCompleted;

  TodoEntity({
    required this.id,
    required this.title,
    required this.desc,
    this.isCompleted = false,
  });
}

