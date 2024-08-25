import "package:flutter/material.dart";

class Task {
  int? id;
  String? title;
  String? description;
  bool isCompleted;
  DateTime? dueDate;
  TimeOfDay? startTime;
  TimeOfDay? endTime;
  int priority;

  Task({
    this.id,
    required this.title,
    this.description,
    this.isCompleted = false,
    this.dueDate,
    this.startTime,
    this.endTime,
    this.priority = 3,
  });
}
