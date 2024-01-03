import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/add_task/data/models/task_model.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());
  List<TaskModel>? tasks;
  fetchAllTasks() {
    var taskesBox = Hive.box<TaskModel>(AppStrings.taskesBoxName);
    tasks = taskesBox.values.toList();
  }
}
