import 'package:flutter/material.dart';
import 'package:to_do/features/add_task/presentation/views/add_task_view.dart';
import 'package:to_do/features/home/presentation/views/home_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeView());
      case '/addTaskView':
        return MaterialPageRoute(builder: (_) => const AddTaskView());
      default:
        return MaterialPageRoute(builder: (_) => const HomeView());
    }
  }
}
