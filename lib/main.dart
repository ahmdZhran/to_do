import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do/app/to_do_app.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/add_task/data/models/task_model.dart';

void main() async {
  // Initializing Hive for Flutter
  await Hive.initFlutter();
  // Registering the Hive adapter for the TaskModel
  Hive.registerAdapter(TaskModelAdapter());
  // Opening the Hive box for storing notes with the specified name
  await Hive.openBox(AppStrings.taskesBoxName);

  runApp(const ToDo());
}
