import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/features/add_task/presentation/view_model/cubit/add_task_cubit/add_task_cubit.dart';
import 'package:to_do/features/add_task/presentation/views/add_task_view.dart';
import 'package:to_do/features/home/presentation/views/home_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeView());
      case '/addTaskView':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AddTaskCubit(),
            child: const AddTaskView(),
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) => const HomeView());
    }
  }
}
